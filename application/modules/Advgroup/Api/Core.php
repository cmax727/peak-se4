<?php
class Advgroup_Api_Core extends Core_Api_Abstract
{
    function subPhrase($string,$length = 0){
      if(strlen($string)<=$length) return $string;
      $pos = $length;
      for($i=$length-1;$i>=0;$i--){
        if($string[$i]==" "){
          $pos = $i+1;
          break;
        }
      }
      return substr($string,0,$pos)."...";
    }
    /**
     * Used to upload CSV/VCF file
     *
     * @param mixed $user
     */
    function uploadContactFile($user) {
        // Get the library file
        include_once 'VcardReader.php';
        include_once 'vcard.php';
        $settings = Engine_Api::_()->getApi('settings', 'core');
        $contacts = array();
        $friends = array();

        $is_error = 0;
        $message = '';
        $ci_contacts = array();

        // list the permitted file type
        $permit_file_types = array(
            'text/csv' => 'csv',
            'text/comma-separated-values' => 'csv',
            'application/csv' => 'csv',
            'application/excel' => 'csv',
            'application/vnd.ms-excel' => 'csv',
            'application/vnd.msexcel' => 'csv',
            'text/anytext' => 'csv',
            'text/x-vcard' => 'vcf',
            'application/vcard' => 'vcf',
            'text/anytext' => 'vcf',
            'text/directory' => 'vcf',
            'text/x-vcalendar' => 'vcf',
            'application/x-versit' => 'vcf',
            'text/x-versit' => 'vcf',
            'application/octet-stream' => 'ldif',
        );


        for (;;) {
            $uploaded_file = $_FILES['csvfile']['tmp_name'];
            $filetype = $_FILES['csvfile']["type"];
            $filename = $_FILES['csvfile']['name'];
            // Check file types
            $v = strpos($filename, '.ldif');

            if (!array_key_exists($filetype, $permit_file_types) && $v < 0) {
                $is_error = 1;
                $message = "Invalid file type!";
                break;
            }

            if (is_uploaded_file($uploaded_file)) {
                $fh = fopen($uploaded_file, "r");
                //die('0');
                if ($this->EndsWith(mb_strtolower($filename), 'csv')) {

                    // Process CSV file type
                    //die('1');
                    $i = 0;
                    $row = fgetcsv($fh, 1024, ',');

                    $first_name_pos = -1;
                    $email_pos = -1;
                    $first_display_name = -1;
                    $count = count($row);

                    for ($i = 0; $i < $count; $i = $i + 1) {

                        if ($row[$i] == "E-mail Display Name" || $row[$i] == "First" || $row[$i] == "First Name") {

                            $first_name_pos = $i;
                        } elseif ($row[$i] == "E-mail Address" || $row[$i] == "Email" || $row[$i] == "E-mail Address") {
                            $email_pos = $i;
                        } elseif ($row[$i] == "First Name" || $row[$i] == "First") {//yahoo format oulook
                            $first_display_name = $i;
                        } else {
                            // do nothing
                        }
                    }

                    if (($email_pos == -1) || ($first_name_pos == -1)) {
                        $is_error = 1;
                        $message = "Invalid file format!";
                        break;
                    } else {
                        if ($first_display_name == -1)
                            $first_display_name = $first_name_pos;
                    }

                    while (($row = fgetcsv($fh, 1024, ',')) != false) {
                        if (isset($row[$email_pos]) && $row[$email_pos] != "")
                            $contacts[] = array('email' => $row[$email_pos],
                                'name' => empty($row[$first_name_pos]) ? @$row[$first_display_name] : @$row[$first_name_pos]
                            );
                    }

                    fclose($fh);
                }
                elseif ($this->EndsWith(mb_strtolower($filename), 'vcf')) {
                    // Process VCF file type
                    $file_size = filesize($uploaded_file);

                    if ($file_size == 0) {
                        $is_error = 1;
                        $message = 'Empty file!';
                        break;
                    }
                    $lines = file($uploaded_file);
                    $cards = @$this->parse_vcards($lines);
                    $all_categories = @$this->get_vcard_categories($cards);
                    //$names = array('FN', 'TITLE', 'ORG', 'TEL', 'EMAIL', 'URL', 'ADR', 'BDAY', 'NOTE');
                    $names = array('EMAIL');
                    foreach ($cards as $card_name => $card) {

                        //echo $card_name;
                        $contact['first_name'] = $card_name;
                        $contact['name'] = $contact['first_name'];

                        $properties = $card->getProperties('EMAIL');
                        if ($properties) {
                            //echo "<pre>".print_r($properties,true)."</pre>";
                            $contact['email'] = $properties[0]->value;
                            $contacts[] = array('email' => $contact['email'], 'name' => $contact['name']);
                            //echo ;
                        }
                    }
                    if ((!isset($contact['email'])) || (!isset($contact['name']))) {
                        //die('3');
                        $is_error = 1;
                        $message = "Invalid file format!";
                        break;
                    }

                    if (isset($contact['email'])) {
                        //die('4');
                        if ($this->validateEmail($contact['email'])) {
                            $contacts[] = array('email' => $contact['email'], 'name' => $contact['name']);
                        } else {
                            // error 1 contact, but omit it
                            $is_error = 0;
                            $message = "There's some error in your contact file";
                        }
                    }
                } elseif ($this->EndsWith(mb_strtolower($filename), 'ldif')) {//thunderbirth
                    $thunder_data = fread($fh, filesize($uploaded_file));
                    $rows = explode(PHP_EOL, $thunder_data);
                    $name = "";
                    $email = "";
                    $contacts = array();

                    foreach ($rows as $index => $row) {
                        try {
                            @list($key, $data) = @explode(':', $row);
                            if ($key == 'cn')
                                $name = $data;
                            if ($key == 'mail')
                                $email = trim($data);

                            if ($name != "" && $email != "") {


                                $contacts[] = array('email' => $email, 'name' => $name);

                                $name = "";
                                $email = "";
                            }
                        } catch (Exception $ex) {

                        }
                    }
                } else {
                    // not support format
                    $is_error = 1;
                    $message = "Unknown file type!";
                }
            }

            if (empty($contacts)) {

                $is_error = 1;
                $message = "There is no contact in your address book";
                break;
            }

            foreach ($contacts as $value) {

                $ci_contacts["{$value["email"]}"] = $value["name"];
            }
            break;
        }

        $returns['contacts'] = $ci_contacts;
        $returns['is_error'] = $is_error;
        $returns['error_message'] = $message;

        return $returns;
    }

    /**
     * Check if a string ends with a specified substring
     *
     * @param mixed $FullStr
     * @param mixed $EndStr
     */
    function endsWith($FullStr, $EndStr) {
        // Get the length of the end string
        $StrLen = strlen($EndStr);

        // Look at the end of FullStr for the substring the size of EndStr

        $FullStrEnd = substr($FullStr, strlen($FullStr) - $StrLen);
        // If it matches, it does end with EndStr
        return $FullStrEnd == $EndStr;
    }
}

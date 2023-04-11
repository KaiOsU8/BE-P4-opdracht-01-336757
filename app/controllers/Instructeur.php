<?php

class Instructeur extends BaseController
{
    private $instructeurModel;

    public function __construct()
    {
        $this->instructeurModel = $this->model('InstructeurModel');
    }

    public function overzichtInstructeur()
    {
        $result = $this->instructeurModel->getInstructeurs();

        var_dump($result); exit();

        $rows = "";
        foreach ($result as $instructeur) {
            $rows .= "<tr>
                        <td>$instructeur->Voornaam</td>
                        <td>$instructeur->Tussenvoegsel</td>
                        <td>$instructeur->Achternaam</td>
                        <td>$instructeur->Mobiel</td>
                        <td>$instructeur->DatumInDienst</td>            
                        <td>$instructeur->AantalSterren</td>            
                        <td>auto-icon</td>            
                      </tr>";
        }
        
        $data = [
            'title' => 'Instructeurs in dienst',
            'rows' => $rows
        ];

        $this->view('Instructeur/overzichtinstructeur', $data);
    }
}
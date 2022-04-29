<?php
defined('BASEPATH') or exit('No direct script access allowed');
class Asociado_model extends CI_Model
{
    function insert($data)
    {
        $this->db->set($data);
        $this->db->insert('asociado', $data);
        $insert_id = $this->db->insert_id();
        return $insert_id;
    }

    function update($id, $data)
    {
        $this->db->where('id_asociado', $id);
        $this->db->update('asociado', $data);
    }

    function delete($id)
    {
        $this->db->where('id_asociado', $id);
        $this->db->delete('asociado');
    }

    function get_todos()
    {
        $query = $this->db->query('SELECT * FROM asociado');
        return $query->result();
    }

    function get($id_asociado)
    {
        $query = $this->db->query('SELECT * FROM asociado WHERE id_asociado = ?', array($id_asociado));
        return $query->row();
    }
}// fin class

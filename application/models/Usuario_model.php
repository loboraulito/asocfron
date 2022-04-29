<?php
defined('BASEPATH') or exit('No direct script access allowed');
class Usuario_model extends CI_Model
{
    function insert($data)
    {
        $this->db->set($data);
        $this->db->insert('usuario', $data);
        $insert_id = $this->db->insert_id();
        return $insert_id;
    }

    function update($id, $data)
    {
        $this->db->where('id_usuario', $id);
        $this->db->update('usuario', $data);
    }

    function delete($id)
    {
        $this->db->where('id_usuario', $id);
        $this->db->delete('usuario');
    }

    function get_todos()
    {
        $query = $this->db->query('SELECT * FROM usuario');
        return $query->result();
    }

    function get($id_usuario)
    {
        $query = $this->db->query('SELECT * FROM usuario WHERE id_usuario = ?', array($id_usuario));
        return $query->row();
    }
}// fin class

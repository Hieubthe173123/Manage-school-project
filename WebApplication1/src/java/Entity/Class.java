/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author admin
 */
public class Class {
    private int classid;
    private String clname;
    private int rid;

    public Class() {
    }

    public Class(int classid, String clname, int rid) {
        this.classid = classid;
        this.clname = clname;
        this.rid = rid;
    }

    public int getClassid() {
        return classid;
    }

    public void setClassid(int classid) {
        this.classid = classid;
    }

    public String getClname() {
        return clname;
    }

    public void setClname(String clname) {
        this.clname = clname;
    }

    public int getRid() {
        return rid;
    }

    public void setRid(int rid) {
        this.rid = rid;
    }

    @Override
    public String toString() {
        return "Class{" + "classid=" + classid + ", clname=" + clname + ", rid=" + rid + '}';
    }
    
}

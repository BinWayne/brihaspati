package org.iitk.brihaspati.om;


import java.math.BigDecimal;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.Date;
import java.util.Collections;
import java.util.List;

import org.apache.commons.lang.ObjectUtils;
import org.apache.torque.TorqueException;
import org.apache.torque.om.BaseObject;
import org.apache.torque.om.ComboKey;
import org.apache.torque.om.DateKey;
import org.apache.torque.om.NumberKey;
import org.apache.torque.om.ObjectKey;
import org.apache.torque.om.SimpleKey;
import org.apache.torque.om.StringKey;
import org.apache.torque.om.Persistent;
import org.apache.torque.util.Criteria;
import org.apache.torque.util.Transaction;


/**
 * You should not use this class directly.  It should not even be
 * extended all references should be to FacultyCourse
 */
public abstract class BaseFacultyCourse extends BaseObject
{
    /** The Peer class */
    private static final FacultyCoursePeer peer =
        new FacultyCoursePeer();

        
    /** The value for the courseCode field */
    private String courseCode;
      
    /** The value for the facultyId field */
    private String facultyId;
  
    
    /**
     * Get the CourseCode
     *
     * @return String
     */
    public String getCourseCode()
    {
        return courseCode;
    }

                        
    /**
     * Set the value of CourseCode
     *
     * @param v new value
     */
    public void setCourseCode(String v) 
    {
    
                  if (!ObjectUtils.equals(this.courseCode, v))
              {
            this.courseCode = v;
            setModified(true);
        }
    
          
              }
  
    /**
     * Get the FacultyId
     *
     * @return String
     */
    public String getFacultyId()
    {
        return facultyId;
    }

                        
    /**
     * Set the value of FacultyId
     *
     * @param v new value
     */
    public void setFacultyId(String v) 
    {
    
                  if (!ObjectUtils.equals(this.facultyId, v))
              {
            this.facultyId = v;
            setModified(true);
        }
    
          
              }
  
         
                
     
    /**
     * Stores the object in the database.  If the object is new,
     * it inserts it; otherwise an update is performed.
     *
     * @throws Exception
     */
    public void save() throws Exception
    {
          save(FacultyCoursePeer.getMapBuilder()
                .getDatabaseMap().getName());
      }

    /**
     * Stores the object in the database.  If the object is new,
     * it inserts it; otherwise an update is performed.
       * Note: this code is here because the method body is
     * auto-generated conditionally and therefore needs to be
     * in this file instead of in the super class, BaseObject.
       *
     * @param dbName
     * @throws TorqueException
     */
    public void save(String dbName) throws TorqueException
    {
        Connection con = null;
          try
        {
            con = Transaction.begin(dbName);
            save(con);
            Transaction.commit(con);
        }
        catch(TorqueException e)
        {
            Transaction.safeRollback(con);
            throw e;
        }
      }

      /** flag to prevent endless save loop, if this object is referenced
        by another object which falls in this transaction. */
    private boolean alreadyInSave = false;
      /**
     * Stores the object in the database.  If the object is new,
     * it inserts it; otherwise an update is performed.  This method
     * is meant to be used as part of a transaction, otherwise use
     * the save() method and the connection details will be handled
     * internally
     *
     * @param con
     * @throws TorqueException
     */
    public void save(Connection con) throws TorqueException
    {
          if (!alreadyInSave)
        {
            alreadyInSave = true;


  
            // If this object has been modified, then save it to the database.
            if (isModified())
            {
                if (isNew())
                {
                    FacultyCoursePeer.doInsert((FacultyCourse) this, con);
                    setNew(false);
                }
                else
                {
                    FacultyCoursePeer.doUpdate((FacultyCourse) this, con);
                }
            }

                      alreadyInSave = false;
        }
      }


    
  
    /**
     * returns an id that differentiates this object from others
     * of its class.
     */
    public ObjectKey getPrimaryKey()
    {
          return null;
      }

 

    /**
     * Makes a copy of this object.
     * It creates a new object filling in the simple attributes.
       * It then fills all the association collections and sets the
     * related objects to isNew=true.
       */
      public FacultyCourse copy() throws TorqueException
    {
        return copyInto(new FacultyCourse());
    }
  
    protected FacultyCourse copyInto(FacultyCourse copyObj) throws TorqueException
    {
          copyObj.setCourseCode(courseCode);
          copyObj.setFacultyId(facultyId);
  
              
        
        return copyObj;
    }

    /**
     * returns a peer instance associated with this om.  Since Peer classes
     * are not to have any instance attributes, this method returns the
     * same instance for all member of this class. The method could therefore
     * be static, but this would prevent one from overriding the behavior.
     */
    public FacultyCoursePeer getPeer()
    {
        return peer;
    }

    public String toString()
    {
        StringBuffer str = new StringBuffer();
        str.append("FacultyCourse:\n");
        str.append("CourseCode = ")
           .append(getCourseCode())
           .append("\n");
        str.append("FacultyId = ")
           .append(getFacultyId())
           .append("\n");
        return(str.toString());
    }
}

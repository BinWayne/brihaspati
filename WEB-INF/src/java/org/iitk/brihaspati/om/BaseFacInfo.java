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
 * extended all references should be to FacInfo
 */
public abstract class BaseFacInfo extends BaseObject
{
    /** The Peer class */
    private static final FacInfoPeer peer =
        new FacInfoPeer();

        
    /** The value for the facId field */
    private int facId;
      
    /** The value for the name field */
    private String name;
      
    /** The value for the department field */
    private String department;
      
    /** The value for the institute field */
    private String institute;
      
    /** The value for the id field */
    private String id;
  
    
    /**
     * Get the FacId
     *
     * @return int
     */
    public int getFacId()
    {
        return facId;
    }

                        
    /**
     * Set the value of FacId
     *
     * @param v new value
     */
    public void setFacId(int v) 
    {
    
                  if (this.facId != v)
              {
            this.facId = v;
            setModified(true);
        }
    
          
              }
  
    /**
     * Get the Name
     *
     * @return String
     */
    public String getName()
    {
        return name;
    }

                        
    /**
     * Set the value of Name
     *
     * @param v new value
     */
    public void setName(String v) 
    {
    
                  if (!ObjectUtils.equals(this.name, v))
              {
            this.name = v;
            setModified(true);
        }
    
          
              }
  
    /**
     * Get the Department
     *
     * @return String
     */
    public String getDepartment()
    {
        return department;
    }

                        
    /**
     * Set the value of Department
     *
     * @param v new value
     */
    public void setDepartment(String v) 
    {
    
                  if (!ObjectUtils.equals(this.department, v))
              {
            this.department = v;
            setModified(true);
        }
    
          
              }
  
    /**
     * Get the Institute
     *
     * @return String
     */
    public String getInstitute()
    {
        return institute;
    }

                        
    /**
     * Set the value of Institute
     *
     * @param v new value
     */
    public void setInstitute(String v) 
    {
    
                  if (!ObjectUtils.equals(this.institute, v))
              {
            this.institute = v;
            setModified(true);
        }
    
          
              }
  
    /**
     * Get the Id
     *
     * @return String
     */
    public String getId()
    {
        return id;
    }

                        
    /**
     * Set the value of Id
     *
     * @param v new value
     */
    public void setId(String v) 
    {
    
                  if (!ObjectUtils.equals(this.id, v))
              {
            this.id = v;
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
          save(FacInfoPeer.getMapBuilder()
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
                    FacInfoPeer.doInsert((FacInfo) this, con);
                    setNew(false);
                }
                else
                {
                    FacInfoPeer.doUpdate((FacInfo) this, con);
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
      public FacInfo copy() throws TorqueException
    {
        return copyInto(new FacInfo());
    }
  
    protected FacInfo copyInto(FacInfo copyObj) throws TorqueException
    {
          copyObj.setFacId(facId);
          copyObj.setName(name);
          copyObj.setDepartment(department);
          copyObj.setInstitute(institute);
          copyObj.setId(id);
  
                                
        
        return copyObj;
    }

    /**
     * returns a peer instance associated with this om.  Since Peer classes
     * are not to have any instance attributes, this method returns the
     * same instance for all member of this class. The method could therefore
     * be static, but this would prevent one from overriding the behavior.
     */
    public FacInfoPeer getPeer()
    {
        return peer;
    }

    public String toString()
    {
        StringBuffer str = new StringBuffer();
        str.append("FacInfo:\n");
        str.append("FacId = ")
           .append(getFacId())
           .append("\n");
        str.append("Name = ")
           .append(getName())
           .append("\n");
        str.append("Department = ")
           .append(getDepartment())
           .append("\n");
        str.append("Institute = ")
           .append(getInstitute())
           .append("\n");
        str.append("Id = ")
           .append(getId())
           .append("\n");
        return(str.toString());
    }
}

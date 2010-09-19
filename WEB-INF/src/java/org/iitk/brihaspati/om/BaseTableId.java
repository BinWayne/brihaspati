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
 * extended all references should be to TableId
 */
public abstract class BaseTableId extends BaseObject
{
    /** The Peer class */
    private static final TableIdPeer peer =
        new TableIdPeer();

        
    /** The value for the id field */
    private int id;
      
    /** The value for the path field */
    private String path;
      
    /** The value for the user field */
    private String user;
      
    /** The value for the department field */
    private String department;
      
    /** The value for the date field */
    private Date date;
  
    
    /**
     * Get the Id
     *
     * @return int
     */
    public int getId()
    {
        return id;
    }

                        
    /**
     * Set the value of Id
     *
     * @param v new value
     */
    public void setId(int v) 
    {
    
                  if (this.id != v)
              {
            this.id = v;
            setModified(true);
        }
    
          
              }
  
    /**
     * Get the Path
     *
     * @return String
     */
    public String getPath()
    {
        return path;
    }

                        
    /**
     * Set the value of Path
     *
     * @param v new value
     */
    public void setPath(String v) 
    {
    
                  if (!ObjectUtils.equals(this.path, v))
              {
            this.path = v;
            setModified(true);
        }
    
          
              }
  
    /**
     * Get the User
     *
     * @return String
     */
    public String getUser()
    {
        return user;
    }

                        
    /**
     * Set the value of User
     *
     * @param v new value
     */
    public void setUser(String v) 
    {
    
                  if (!ObjectUtils.equals(this.user, v))
              {
            this.user = v;
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
     * Get the Date
     *
     * @return Date
     */
    public Date getDate()
    {
        return date;
    }

                        
    /**
     * Set the value of Date
     *
     * @param v new value
     */
    public void setDate(Date v) 
    {
    
                  if (!ObjectUtils.equals(this.date, v))
              {
            this.date = v;
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
          save(TableIdPeer.getMapBuilder()
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
                    TableIdPeer.doInsert((TableId) this, con);
                    setNew(false);
                }
                else
                {
                    TableIdPeer.doUpdate((TableId) this, con);
                }
            }

                      alreadyInSave = false;
        }
      }


                    
      /**
     * Set the PrimaryKey using ObjectKey.
     *
     * @param  id ObjectKey
     */
    public void setPrimaryKey(ObjectKey key)
        
    {
            setId(((NumberKey) key).intValue());
        }

    /**
     * Set the PrimaryKey using a String.
     *
     * @param key
     */
    public void setPrimaryKey(String key) 
    {
            setId(Integer.parseInt(key));
        }

  
    /**
     * returns an id that differentiates this object from others
     * of its class.
     */
    public ObjectKey getPrimaryKey()
    {
          return SimpleKey.keyFor(getId());
      }

 

    /**
     * Makes a copy of this object.
     * It creates a new object filling in the simple attributes.
       * It then fills all the association collections and sets the
     * related objects to isNew=true.
       */
      public TableId copy() throws TorqueException
    {
        return copyInto(new TableId());
    }
  
    protected TableId copyInto(TableId copyObj) throws TorqueException
    {
          copyObj.setId(id);
          copyObj.setPath(path);
          copyObj.setUser(user);
          copyObj.setDepartment(department);
          copyObj.setDate(date);
  
                    copyObj.setId(0);
                                    
        
        return copyObj;
    }

    /**
     * returns a peer instance associated with this om.  Since Peer classes
     * are not to have any instance attributes, this method returns the
     * same instance for all member of this class. The method could therefore
     * be static, but this would prevent one from overriding the behavior.
     */
    public TableIdPeer getPeer()
    {
        return peer;
    }

    public String toString()
    {
        StringBuffer str = new StringBuffer();
        str.append("TableId:\n");
        str.append("Id = ")
           .append(getId())
           .append("\n");
        str.append("Path = ")
           .append(getPath())
           .append("\n");
        str.append("User = ")
           .append(getUser())
           .append("\n");
        str.append("Department = ")
           .append(getDepartment())
           .append("\n");
        str.append("Date = ")
           .append(getDate())
           .append("\n");
        return(str.toString());
    }
}

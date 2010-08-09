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
 * extended all references should be to Venue
 */
public abstract class BaseVenue extends BaseObject
{
    /** The Peer class */
    private static final VenuePeer peer =
        new VenuePeer();

        
    /** The value for the code field */
    private String code;
      
    /** The value for the capacity field */
    private int capacity;
      
    /** The value for the ncomputers field */
    private int ncomputers;
      
    /** The value for the projector field */
    private int projector;
      
    /** The value for the type field */
    private int type;
  
    
    /**
     * Get the Code
     *
     * @return String
     */
    public String getCode()
    {
        return code;
    }

                        
    /**
     * Set the value of Code
     *
     * @param v new value
     */
    public void setCode(String v) 
    {
    
                  if (!ObjectUtils.equals(this.code, v))
              {
            this.code = v;
            setModified(true);
        }
    
          
              }
  
    /**
     * Get the Capacity
     *
     * @return int
     */
    public int getCapacity()
    {
        return capacity;
    }

                        
    /**
     * Set the value of Capacity
     *
     * @param v new value
     */
    public void setCapacity(int v) 
    {
    
                  if (this.capacity != v)
              {
            this.capacity = v;
            setModified(true);
        }
    
          
              }
  
    /**
     * Get the Ncomputers
     *
     * @return int
     */
    public int getNcomputers()
    {
        return ncomputers;
    }

                        
    /**
     * Set the value of Ncomputers
     *
     * @param v new value
     */
    public void setNcomputers(int v) 
    {
    
                  if (this.ncomputers != v)
              {
            this.ncomputers = v;
            setModified(true);
        }
    
          
              }
  
    /**
     * Get the Projector
     *
     * @return int
     */
    public int getProjector()
    {
        return projector;
    }

                        
    /**
     * Set the value of Projector
     *
     * @param v new value
     */
    public void setProjector(int v) 
    {
    
                  if (this.projector != v)
              {
            this.projector = v;
            setModified(true);
        }
    
          
              }
  
    /**
     * Get the Type
     *
     * @return int
     */
    public int getType()
    {
        return type;
    }

                        
    /**
     * Set the value of Type
     *
     * @param v new value
     */
    public void setType(int v) 
    {
    
                  if (this.type != v)
              {
            this.type = v;
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
          save(VenuePeer.getMapBuilder()
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
                    VenuePeer.doInsert((Venue) this, con);
                    setNew(false);
                }
                else
                {
                    VenuePeer.doUpdate((Venue) this, con);
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
      public Venue copy() throws TorqueException
    {
        return copyInto(new Venue());
    }
  
    protected Venue copyInto(Venue copyObj) throws TorqueException
    {
          copyObj.setCode(code);
          copyObj.setCapacity(capacity);
          copyObj.setNcomputers(ncomputers);
          copyObj.setProjector(projector);
          copyObj.setType(type);
  
                                
        
        return copyObj;
    }

    /**
     * returns a peer instance associated with this om.  Since Peer classes
     * are not to have any instance attributes, this method returns the
     * same instance for all member of this class. The method could therefore
     * be static, but this would prevent one from overriding the behavior.
     */
    public VenuePeer getPeer()
    {
        return peer;
    }

    public String toString()
    {
        StringBuffer str = new StringBuffer();
        str.append("Venue:\n");
        str.append("Code = ")
           .append(getCode())
           .append("\n");
        str.append("Capacity = ")
           .append(getCapacity())
           .append("\n");
        str.append("Ncomputers = ")
           .append(getNcomputers())
           .append("\n");
        str.append("Projector = ")
           .append(getProjector())
           .append("\n");
        str.append("Type = ")
           .append(getType())
           .append("\n");
        return(str.toString());
    }
}

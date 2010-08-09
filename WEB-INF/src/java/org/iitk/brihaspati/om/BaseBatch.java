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
 * extended all references should be to Batch
 */
public abstract class BaseBatch extends BaseObject
{
    /** The Peer class */
    private static final BatchPeer peer =
        new BatchPeer();

        
    /** The value for the batchCode field */
    private String batchCode;
      
    /** The value for the strength field */
    private int strength;
      
    /** The value for the batchName field */
    private String batchName;
  
    
    /**
     * Get the BatchCode
     *
     * @return String
     */
    public String getBatchCode()
    {
        return batchCode;
    }

                        
    /**
     * Set the value of BatchCode
     *
     * @param v new value
     */
    public void setBatchCode(String v) 
    {
    
                  if (!ObjectUtils.equals(this.batchCode, v))
              {
            this.batchCode = v;
            setModified(true);
        }
    
          
              }
  
    /**
     * Get the Strength
     *
     * @return int
     */
    public int getStrength()
    {
        return strength;
    }

                        
    /**
     * Set the value of Strength
     *
     * @param v new value
     */
    public void setStrength(int v) 
    {
    
                  if (this.strength != v)
              {
            this.strength = v;
            setModified(true);
        }
    
          
              }
  
    /**
     * Get the BatchName
     *
     * @return String
     */
    public String getBatchName()
    {
        return batchName;
    }

                        
    /**
     * Set the value of BatchName
     *
     * @param v new value
     */
    public void setBatchName(String v) 
    {
    
                  if (!ObjectUtils.equals(this.batchName, v))
              {
            this.batchName = v;
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
          save(BatchPeer.getMapBuilder()
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
                    BatchPeer.doInsert((Batch) this, con);
                    setNew(false);
                }
                else
                {
                    BatchPeer.doUpdate((Batch) this, con);
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
      public Batch copy() throws TorqueException
    {
        return copyInto(new Batch());
    }
  
    protected Batch copyInto(Batch copyObj) throws TorqueException
    {
          copyObj.setBatchCode(batchCode);
          copyObj.setStrength(strength);
          copyObj.setBatchName(batchName);
  
                    
        
        return copyObj;
    }

    /**
     * returns a peer instance associated with this om.  Since Peer classes
     * are not to have any instance attributes, this method returns the
     * same instance for all member of this class. The method could therefore
     * be static, but this would prevent one from overriding the behavior.
     */
    public BatchPeer getPeer()
    {
        return peer;
    }

    public String toString()
    {
        StringBuffer str = new StringBuffer();
        str.append("Batch:\n");
        str.append("BatchCode = ")
           .append(getBatchCode())
           .append("\n");
        str.append("Strength = ")
           .append(getStrength())
           .append("\n");
        str.append("BatchName = ")
           .append(getBatchName())
           .append("\n");
        return(str.toString());
    }
}

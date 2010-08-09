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
 * extended all references should be to Events
 */
public abstract class BaseEvents extends BaseObject
{
    /** The Peer class */
    private static final EventsPeer peer =
        new EventsPeer();

        
    /** The value for the event field */
    private byte[] event;
  
    
    /**
     * Get the Event
     *
     * @return byte[]
     */
    public byte[] getEvent()
    {
        return event;
    }

                        
    /**
     * Set the value of Event
     *
     * @param v new value
     */
    public void setEvent(byte[] v) 
    {
    
                  if (!ObjectUtils.equals(this.event, v))
              {
            this.event = v;
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
          save(EventsPeer.getMapBuilder()
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
                    EventsPeer.doInsert((Events) this, con);
                    setNew(false);
                }
                else
                {
                    EventsPeer.doUpdate((Events) this, con);
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
      public Events copy() throws TorqueException
    {
        return copyInto(new Events());
    }
  
    protected Events copyInto(Events copyObj) throws TorqueException
    {
          copyObj.setEvent(event);
  
        
        
        return copyObj;
    }

    /**
     * returns a peer instance associated with this om.  Since Peer classes
     * are not to have any instance attributes, this method returns the
     * same instance for all member of this class. The method could therefore
     * be static, but this would prevent one from overriding the behavior.
     */
    public EventsPeer getPeer()
    {
        return peer;
    }

    public String toString()
    {
        StringBuffer str = new StringBuffer();
        str.append("Events:\n");
        str.append("Event = ")
           .append(getEvent())
           .append("\n");
        return(str.toString());
    }
}

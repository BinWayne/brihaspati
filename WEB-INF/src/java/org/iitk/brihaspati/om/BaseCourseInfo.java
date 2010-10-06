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
 * extended all references should be to CourseInfo
 */
public abstract class BaseCourseInfo extends BaseObject
{
    /** The Peer class */
    private static final CourseInfoPeer peer =
        new CourseInfoPeer();

        
    /** The value for the courseCode field */
    private String courseCode;
      
    /** The value for the courseType field */
    private String courseType;
      
    /** The value for the eventsPerWeek field */
    private int eventsPerWeek;
      
    /** The value for the duration field */
    private int duration;
      
    /** The value for the computer field */
    private int computer;
      
    /** The value for the projector field */
    private int projector;
      
    /** The value for the venueCode field */
    private String venueCode;
      
    /** The value for the scheduled field */
    private int scheduled;
  
    
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
     * Get the CourseType
     *
     * @return String
     */
    public String getCourseType()
    {
        return courseType;
    }

                        
    /**
     * Set the value of CourseType
     *
     * @param v new value
     */
    public void setCourseType(String v) 
    {
    
                  if (!ObjectUtils.equals(this.courseType, v))
              {
            this.courseType = v;
            setModified(true);
        }
    
          
              }
  
    /**
     * Get the EventsPerWeek
     *
     * @return int
     */
    public int getEventsPerWeek()
    {
        return eventsPerWeek;
    }

                        
    /**
     * Set the value of EventsPerWeek
     *
     * @param v new value
     */
    public void setEventsPerWeek(int v) 
    {
    
                  if (this.eventsPerWeek != v)
              {
            this.eventsPerWeek = v;
            setModified(true);
        }
    
          
              }
  
    /**
     * Get the Duration
     *
     * @return int
     */
    public int getDuration()
    {
        return duration;
    }

                        
    /**
     * Set the value of Duration
     *
     * @param v new value
     */
    public void setDuration(int v) 
    {
    
                  if (this.duration != v)
              {
            this.duration = v;
            setModified(true);
        }
    
          
              }
  
    /**
     * Get the Computer
     *
     * @return int
     */
    public int getComputer()
    {
        return computer;
    }

                        
    /**
     * Set the value of Computer
     *
     * @param v new value
     */
    public void setComputer(int v) 
    {
    
                  if (this.computer != v)
              {
            this.computer = v;
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
     * Get the VenueCode
     *
     * @return String
     */
    public String getVenueCode()
    {
        return venueCode;
    }

                        
    /**
     * Set the value of VenueCode
     *
     * @param v new value
     */
    public void setVenueCode(String v) 
    {
    
                  if (!ObjectUtils.equals(this.venueCode, v))
              {
            this.venueCode = v;
            setModified(true);
        }
    
          
              }
  
    /**
     * Get the Scheduled
     *
     * @return int
     */
    public int getScheduled()
    {
        return scheduled;
    }

                        
    /**
     * Set the value of Scheduled
     *
     * @param v new value
     */
    public void setScheduled(int v) 
    {
    
                  if (this.scheduled != v)
              {
            this.scheduled = v;
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
          save(CourseInfoPeer.getMapBuilder()
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
                    CourseInfoPeer.doInsert((CourseInfo) this, con);
                    setNew(false);
                }
                else
                {
                    CourseInfoPeer.doUpdate((CourseInfo) this, con);
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
      public CourseInfo copy() throws TorqueException
    {
        return copyInto(new CourseInfo());
    }
  
    protected CourseInfo copyInto(CourseInfo copyObj) throws TorqueException
    {
          copyObj.setCourseCode(courseCode);
          copyObj.setCourseType(courseType);
          copyObj.setEventsPerWeek(eventsPerWeek);
          copyObj.setDuration(duration);
          copyObj.setComputer(computer);
          copyObj.setProjector(projector);
          copyObj.setVenueCode(venueCode);
          copyObj.setScheduled(scheduled);
  
                                                  
        
        return copyObj;
    }

    /**
     * returns a peer instance associated with this om.  Since Peer classes
     * are not to have any instance attributes, this method returns the
     * same instance for all member of this class. The method could therefore
     * be static, but this would prevent one from overriding the behavior.
     */
    public CourseInfoPeer getPeer()
    {
        return peer;
    }

    public String toString()
    {
        StringBuffer str = new StringBuffer();
        str.append("CourseInfo:\n");
        str.append("CourseCode = ")
           .append(getCourseCode())
           .append("\n");
        str.append("CourseType = ")
           .append(getCourseType())
           .append("\n");
        str.append("EventsPerWeek = ")
           .append(getEventsPerWeek())
           .append("\n");
        str.append("Duration = ")
           .append(getDuration())
           .append("\n");
        str.append("Computer = ")
           .append(getComputer())
           .append("\n");
        str.append("Projector = ")
           .append(getProjector())
           .append("\n");
        str.append("VenueCode = ")
           .append(getVenueCode())
           .append("\n");
        str.append("Scheduled = ")
           .append(getScheduled())
           .append("\n");
        return(str.toString());
    }
}

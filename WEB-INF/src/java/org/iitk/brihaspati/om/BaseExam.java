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
 * extended all references should be to Exam
 */
public abstract class BaseExam extends BaseObject
{
    /** The Peer class */
    private static final ExamPeer peer =
        new ExamPeer();

        
    /** The value for the examId field */
    private int examId;
      
    /** The value for the title field */
    private String title;
      
    /** The value for the timeOfExam field */
    private Date timeOfExam;
      
    /** The value for the uploadedBy field */
    private String uploadedBy;
      
    /** The value for the dateUploaded field */
    private Date dateUploaded;
      
    /** The value for the instructions field */
    private String instructions;
  
    
    /**
     * Get the ExamId
     *
     * @return int
     */
    public int getExamId()
    {
        return examId;
    }

                        
    /**
     * Set the value of ExamId
     *
     * @param v new value
     */
    public void setExamId(int v) 
    {
    
                  if (this.examId != v)
              {
            this.examId = v;
            setModified(true);
        }
    
          
              }
  
    /**
     * Get the Title
     *
     * @return String
     */
    public String getTitle()
    {
        return title;
    }

                        
    /**
     * Set the value of Title
     *
     * @param v new value
     */
    public void setTitle(String v) 
    {
    
                  if (!ObjectUtils.equals(this.title, v))
              {
            this.title = v;
            setModified(true);
        }
    
          
              }
  
    /**
     * Get the TimeOfExam
     *
     * @return Date
     */
    public Date getTimeOfExam()
    {
        return timeOfExam;
    }

                        
    /**
     * Set the value of TimeOfExam
     *
     * @param v new value
     */
    public void setTimeOfExam(Date v) 
    {
    
                  if (!ObjectUtils.equals(this.timeOfExam, v))
              {
            this.timeOfExam = v;
            setModified(true);
        }
    
          
              }
  
    /**
     * Get the UploadedBy
     *
     * @return String
     */
    public String getUploadedBy()
    {
        return uploadedBy;
    }

                        
    /**
     * Set the value of UploadedBy
     *
     * @param v new value
     */
    public void setUploadedBy(String v) 
    {
    
                  if (!ObjectUtils.equals(this.uploadedBy, v))
              {
            this.uploadedBy = v;
            setModified(true);
        }
    
          
              }
  
    /**
     * Get the DateUploaded
     *
     * @return Date
     */
    public Date getDateUploaded()
    {
        return dateUploaded;
    }

                        
    /**
     * Set the value of DateUploaded
     *
     * @param v new value
     */
    public void setDateUploaded(Date v) 
    {
    
                  if (!ObjectUtils.equals(this.dateUploaded, v))
              {
            this.dateUploaded = v;
            setModified(true);
        }
    
          
              }
  
    /**
     * Get the Instructions
     *
     * @return String
     */
    public String getInstructions()
    {
        return instructions;
    }

                        
    /**
     * Set the value of Instructions
     *
     * @param v new value
     */
    public void setInstructions(String v) 
    {
    
                  if (!ObjectUtils.equals(this.instructions, v))
              {
            this.instructions = v;
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
          save(ExamPeer.getMapBuilder()
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
                    ExamPeer.doInsert((Exam) this, con);
                    setNew(false);
                }
                else
                {
                    ExamPeer.doUpdate((Exam) this, con);
                }
            }

                      alreadyInSave = false;
        }
      }


                    
      /**
     * Set the PrimaryKey using ObjectKey.
     *
     * @param  examId ObjectKey
     */
    public void setPrimaryKey(ObjectKey key)
        
    {
            setExamId(((NumberKey) key).intValue());
        }

    /**
     * Set the PrimaryKey using a String.
     *
     * @param key
     */
    public void setPrimaryKey(String key) 
    {
            setExamId(Integer.parseInt(key));
        }

  
    /**
     * returns an id that differentiates this object from others
     * of its class.
     */
    public ObjectKey getPrimaryKey()
    {
          return SimpleKey.keyFor(getExamId());
      }

 

    /**
     * Makes a copy of this object.
     * It creates a new object filling in the simple attributes.
       * It then fills all the association collections and sets the
     * related objects to isNew=true.
       */
      public Exam copy() throws TorqueException
    {
        return copyInto(new Exam());
    }
  
    protected Exam copyInto(Exam copyObj) throws TorqueException
    {
          copyObj.setExamId(examId);
          copyObj.setTitle(title);
          copyObj.setTimeOfExam(timeOfExam);
          copyObj.setUploadedBy(uploadedBy);
          copyObj.setDateUploaded(dateUploaded);
          copyObj.setInstructions(instructions);
  
                    copyObj.setExamId(0);
                                          
        
        return copyObj;
    }

    /**
     * returns a peer instance associated with this om.  Since Peer classes
     * are not to have any instance attributes, this method returns the
     * same instance for all member of this class. The method could therefore
     * be static, but this would prevent one from overriding the behavior.
     */
    public ExamPeer getPeer()
    {
        return peer;
    }

    public String toString()
    {
        StringBuffer str = new StringBuffer();
        str.append("Exam:\n");
        str.append("ExamId = ")
           .append(getExamId())
           .append("\n");
        str.append("Title = ")
           .append(getTitle())
           .append("\n");
        str.append("TimeOfExam = ")
           .append(getTimeOfExam())
           .append("\n");
        str.append("UploadedBy = ")
           .append(getUploadedBy())
           .append("\n");
        str.append("DateUploaded = ")
           .append(getDateUploaded())
           .append("\n");
        str.append("Instructions = ")
           .append(getInstructions())
           .append("\n");
        return(str.toString());
    }
}

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
 * extended all references should be to Question
 */
public abstract class BaseQuestion extends BaseObject
{
    /** The Peer class */
    private static final QuestionPeer peer =
        new QuestionPeer();

        
    /** The value for the questionId field */
    private int questionId;
      
    /** The value for the statement field */
    private String statement;
      
    /** The value for the type field */
    private String type;
      
    /** The value for the examId field */
    private int examId;
      
    /** The value for the noOfOptions field */
    private int noOfOptions;
      
    /** The value for the marks field */
    private int marks;
  
    
    /**
     * Get the QuestionId
     *
     * @return int
     */
    public int getQuestionId()
    {
        return questionId;
    }

                        
    /**
     * Set the value of QuestionId
     *
     * @param v new value
     */
    public void setQuestionId(int v) 
    {
    
                  if (this.questionId != v)
              {
            this.questionId = v;
            setModified(true);
        }
    
          
              }
  
    /**
     * Get the Statement
     *
     * @return String
     */
    public String getStatement()
    {
        return statement;
    }

                        
    /**
     * Set the value of Statement
     *
     * @param v new value
     */
    public void setStatement(String v) 
    {
    
                  if (!ObjectUtils.equals(this.statement, v))
              {
            this.statement = v;
            setModified(true);
        }
    
          
              }
  
    /**
     * Get the Type
     *
     * @return String
     */
    public String getType()
    {
        return type;
    }

                        
    /**
     * Set the value of Type
     *
     * @param v new value
     */
    public void setType(String v) 
    {
    
                  if (!ObjectUtils.equals(this.type, v))
              {
            this.type = v;
            setModified(true);
        }
    
          
              }
  
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
     * Get the NoOfOptions
     *
     * @return int
     */
    public int getNoOfOptions()
    {
        return noOfOptions;
    }

                        
    /**
     * Set the value of NoOfOptions
     *
     * @param v new value
     */
    public void setNoOfOptions(int v) 
    {
    
                  if (this.noOfOptions != v)
              {
            this.noOfOptions = v;
            setModified(true);
        }
    
          
              }
  
    /**
     * Get the Marks
     *
     * @return int
     */
    public int getMarks()
    {
        return marks;
    }

                        
    /**
     * Set the value of Marks
     *
     * @param v new value
     */
    public void setMarks(int v) 
    {
    
                  if (this.marks != v)
              {
            this.marks = v;
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
          save(QuestionPeer.getMapBuilder()
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
                    QuestionPeer.doInsert((Question) this, con);
                    setNew(false);
                }
                else
                {
                    QuestionPeer.doUpdate((Question) this, con);
                }
            }

                      alreadyInSave = false;
        }
      }


                    
      /**
     * Set the PrimaryKey using ObjectKey.
     *
     * @param  questionId ObjectKey
     */
    public void setPrimaryKey(ObjectKey key)
        
    {
            setQuestionId(((NumberKey) key).intValue());
        }

    /**
     * Set the PrimaryKey using a String.
     *
     * @param key
     */
    public void setPrimaryKey(String key) 
    {
            setQuestionId(Integer.parseInt(key));
        }

  
    /**
     * returns an id that differentiates this object from others
     * of its class.
     */
    public ObjectKey getPrimaryKey()
    {
          return SimpleKey.keyFor(getQuestionId());
      }

 

    /**
     * Makes a copy of this object.
     * It creates a new object filling in the simple attributes.
       * It then fills all the association collections and sets the
     * related objects to isNew=true.
       */
      public Question copy() throws TorqueException
    {
        return copyInto(new Question());
    }
  
    protected Question copyInto(Question copyObj) throws TorqueException
    {
          copyObj.setQuestionId(questionId);
          copyObj.setStatement(statement);
          copyObj.setType(type);
          copyObj.setExamId(examId);
          copyObj.setNoOfOptions(noOfOptions);
          copyObj.setMarks(marks);
  
                    copyObj.setQuestionId(0);
                                          
        
        return copyObj;
    }

    /**
     * returns a peer instance associated with this om.  Since Peer classes
     * are not to have any instance attributes, this method returns the
     * same instance for all member of this class. The method could therefore
     * be static, but this would prevent one from overriding the behavior.
     */
    public QuestionPeer getPeer()
    {
        return peer;
    }

    public String toString()
    {
        StringBuffer str = new StringBuffer();
        str.append("Question:\n");
        str.append("QuestionId = ")
           .append(getQuestionId())
           .append("\n");
        str.append("Statement = ")
           .append(getStatement())
           .append("\n");
        str.append("Type = ")
           .append(getType())
           .append("\n");
        str.append("ExamId = ")
           .append(getExamId())
           .append("\n");
        str.append("NoOfOptions = ")
           .append(getNoOfOptions())
           .append("\n");
        str.append("Marks = ")
           .append(getMarks())
           .append("\n");
        return(str.toString());
    }
}

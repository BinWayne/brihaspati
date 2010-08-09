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
 * extended all references should be to InstituteAdminRegistration
 */
public abstract class BaseInstituteAdminRegistration extends BaseObject
{
    /** The Peer class */
    private static final InstituteAdminRegistrationPeer peer =
        new InstituteAdminRegistrationPeer();

        
    /** The value for the instituteId field */
    private int instituteId;
      
    /** The value for the instituteName field */
    private String instituteName;
      
    /** The value for the instiuteAddress field */
    private String instiuteAddress;
      
    /** The value for the city field */
    private String city;
      
    /** The value for the pincode field */
    private int pincode;
      
    /** The value for the state field */
    private String state;
      
    /** The value for the landlineNo field */
    private int landlineNo;
      
    /** The value for the instituteDomain field */
    private String instituteDomain;
      
    /** The value for the typeOfInstitution field */
    private String typeOfInstitution;
      
    /** The value for the affiliation field */
    private String affiliation;
      
    /** The value for the instituteWebsite field */
    private String instituteWebsite;
      
    /** The value for the adminFname field */
    private String adminFname;
      
    /** The value for the adminLname field */
    private String adminLname;
      
    /** The value for the adminEmail field */
    private String adminEmail;
      
    /** The value for the adminDesignation field */
    private String adminDesignation;
      
    /** The value for the adminUname field */
    private String adminUname;
      
    /** The value for the adminPassword field */
    private String adminPassword;
                                          
    /** The value for the instituteStatus field */
    private int instituteStatus = 0;
  
    
    /**
     * Get the InstituteId
     *
     * @return int
     */
    public int getInstituteId()
    {
        return instituteId;
    }

                        
    /**
     * Set the value of InstituteId
     *
     * @param v new value
     */
    public void setInstituteId(int v) 
    {
    
                  if (this.instituteId != v)
              {
            this.instituteId = v;
            setModified(true);
        }
    
          
              }
  
    /**
     * Get the InstituteName
     *
     * @return String
     */
    public String getInstituteName()
    {
        return instituteName;
    }

                        
    /**
     * Set the value of InstituteName
     *
     * @param v new value
     */
    public void setInstituteName(String v) 
    {
    
                  if (!ObjectUtils.equals(this.instituteName, v))
              {
            this.instituteName = v;
            setModified(true);
        }
    
          
              }
  
    /**
     * Get the InstiuteAddress
     *
     * @return String
     */
    public String getInstiuteAddress()
    {
        return instiuteAddress;
    }

                        
    /**
     * Set the value of InstiuteAddress
     *
     * @param v new value
     */
    public void setInstiuteAddress(String v) 
    {
    
                  if (!ObjectUtils.equals(this.instiuteAddress, v))
              {
            this.instiuteAddress = v;
            setModified(true);
        }
    
          
              }
  
    /**
     * Get the City
     *
     * @return String
     */
    public String getCity()
    {
        return city;
    }

                        
    /**
     * Set the value of City
     *
     * @param v new value
     */
    public void setCity(String v) 
    {
    
                  if (!ObjectUtils.equals(this.city, v))
              {
            this.city = v;
            setModified(true);
        }
    
          
              }
  
    /**
     * Get the Pincode
     *
     * @return int
     */
    public int getPincode()
    {
        return pincode;
    }

                        
    /**
     * Set the value of Pincode
     *
     * @param v new value
     */
    public void setPincode(int v) 
    {
    
                  if (this.pincode != v)
              {
            this.pincode = v;
            setModified(true);
        }
    
          
              }
  
    /**
     * Get the State
     *
     * @return String
     */
    public String getState()
    {
        return state;
    }

                        
    /**
     * Set the value of State
     *
     * @param v new value
     */
    public void setState(String v) 
    {
    
                  if (!ObjectUtils.equals(this.state, v))
              {
            this.state = v;
            setModified(true);
        }
    
          
              }
  
    /**
     * Get the LandlineNo
     *
     * @return int
     */
    public int getLandlineNo()
    {
        return landlineNo;
    }

                        
    /**
     * Set the value of LandlineNo
     *
     * @param v new value
     */
    public void setLandlineNo(int v) 
    {
    
                  if (this.landlineNo != v)
              {
            this.landlineNo = v;
            setModified(true);
        }
    
          
              }
  
    /**
     * Get the InstituteDomain
     *
     * @return String
     */
    public String getInstituteDomain()
    {
        return instituteDomain;
    }

                        
    /**
     * Set the value of InstituteDomain
     *
     * @param v new value
     */
    public void setInstituteDomain(String v) 
    {
    
                  if (!ObjectUtils.equals(this.instituteDomain, v))
              {
            this.instituteDomain = v;
            setModified(true);
        }
    
          
              }
  
    /**
     * Get the TypeOfInstitution
     *
     * @return String
     */
    public String getTypeOfInstitution()
    {
        return typeOfInstitution;
    }

                        
    /**
     * Set the value of TypeOfInstitution
     *
     * @param v new value
     */
    public void setTypeOfInstitution(String v) 
    {
    
                  if (!ObjectUtils.equals(this.typeOfInstitution, v))
              {
            this.typeOfInstitution = v;
            setModified(true);
        }
    
          
              }
  
    /**
     * Get the Affiliation
     *
     * @return String
     */
    public String getAffiliation()
    {
        return affiliation;
    }

                        
    /**
     * Set the value of Affiliation
     *
     * @param v new value
     */
    public void setAffiliation(String v) 
    {
    
                  if (!ObjectUtils.equals(this.affiliation, v))
              {
            this.affiliation = v;
            setModified(true);
        }
    
          
              }
  
    /**
     * Get the InstituteWebsite
     *
     * @return String
     */
    public String getInstituteWebsite()
    {
        return instituteWebsite;
    }

                        
    /**
     * Set the value of InstituteWebsite
     *
     * @param v new value
     */
    public void setInstituteWebsite(String v) 
    {
    
                  if (!ObjectUtils.equals(this.instituteWebsite, v))
              {
            this.instituteWebsite = v;
            setModified(true);
        }
    
          
              }
  
    /**
     * Get the AdminFname
     *
     * @return String
     */
    public String getAdminFname()
    {
        return adminFname;
    }

                        
    /**
     * Set the value of AdminFname
     *
     * @param v new value
     */
    public void setAdminFname(String v) 
    {
    
                  if (!ObjectUtils.equals(this.adminFname, v))
              {
            this.adminFname = v;
            setModified(true);
        }
    
          
              }
  
    /**
     * Get the AdminLname
     *
     * @return String
     */
    public String getAdminLname()
    {
        return adminLname;
    }

                        
    /**
     * Set the value of AdminLname
     *
     * @param v new value
     */
    public void setAdminLname(String v) 
    {
    
                  if (!ObjectUtils.equals(this.adminLname, v))
              {
            this.adminLname = v;
            setModified(true);
        }
    
          
              }
  
    /**
     * Get the AdminEmail
     *
     * @return String
     */
    public String getAdminEmail()
    {
        return adminEmail;
    }

                        
    /**
     * Set the value of AdminEmail
     *
     * @param v new value
     */
    public void setAdminEmail(String v) 
    {
    
                  if (!ObjectUtils.equals(this.adminEmail, v))
              {
            this.adminEmail = v;
            setModified(true);
        }
    
          
              }
  
    /**
     * Get the AdminDesignation
     *
     * @return String
     */
    public String getAdminDesignation()
    {
        return adminDesignation;
    }

                        
    /**
     * Set the value of AdminDesignation
     *
     * @param v new value
     */
    public void setAdminDesignation(String v) 
    {
    
                  if (!ObjectUtils.equals(this.adminDesignation, v))
              {
            this.adminDesignation = v;
            setModified(true);
        }
    
          
              }
  
    /**
     * Get the AdminUname
     *
     * @return String
     */
    public String getAdminUname()
    {
        return adminUname;
    }

                        
    /**
     * Set the value of AdminUname
     *
     * @param v new value
     */
    public void setAdminUname(String v) 
    {
    
                  if (!ObjectUtils.equals(this.adminUname, v))
              {
            this.adminUname = v;
            setModified(true);
        }
    
          
              }
  
    /**
     * Get the AdminPassword
     *
     * @return String
     */
    public String getAdminPassword()
    {
        return adminPassword;
    }

                        
    /**
     * Set the value of AdminPassword
     *
     * @param v new value
     */
    public void setAdminPassword(String v) 
    {
    
                  if (!ObjectUtils.equals(this.adminPassword, v))
              {
            this.adminPassword = v;
            setModified(true);
        }
    
          
              }
  
    /**
     * Get the InstituteStatus
     *
     * @return int
     */
    public int getInstituteStatus()
    {
        return instituteStatus;
    }

                        
    /**
     * Set the value of InstituteStatus
     *
     * @param v new value
     */
    public void setInstituteStatus(int v) 
    {
    
                  if (this.instituteStatus != v)
              {
            this.instituteStatus = v;
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
          save(InstituteAdminRegistrationPeer.getMapBuilder()
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
                    InstituteAdminRegistrationPeer.doInsert((InstituteAdminRegistration) this, con);
                    setNew(false);
                }
                else
                {
                    InstituteAdminRegistrationPeer.doUpdate((InstituteAdminRegistration) this, con);
                }
            }

                      alreadyInSave = false;
        }
      }


                    
      /**
     * Set the PrimaryKey using ObjectKey.
     *
     * @param  instituteId ObjectKey
     */
    public void setPrimaryKey(ObjectKey key)
        
    {
            setInstituteId(((NumberKey) key).intValue());
        }

    /**
     * Set the PrimaryKey using a String.
     *
     * @param key
     */
    public void setPrimaryKey(String key) 
    {
            setInstituteId(Integer.parseInt(key));
        }

  
    /**
     * returns an id that differentiates this object from others
     * of its class.
     */
    public ObjectKey getPrimaryKey()
    {
          return SimpleKey.keyFor(getInstituteId());
      }

 

    /**
     * Makes a copy of this object.
     * It creates a new object filling in the simple attributes.
       * It then fills all the association collections and sets the
     * related objects to isNew=true.
       */
      public InstituteAdminRegistration copy() throws TorqueException
    {
        return copyInto(new InstituteAdminRegistration());
    }
  
    protected InstituteAdminRegistration copyInto(InstituteAdminRegistration copyObj) throws TorqueException
    {
          copyObj.setInstituteId(instituteId);
          copyObj.setInstituteName(instituteName);
          copyObj.setInstiuteAddress(instiuteAddress);
          copyObj.setCity(city);
          copyObj.setPincode(pincode);
          copyObj.setState(state);
          copyObj.setLandlineNo(landlineNo);
          copyObj.setInstituteDomain(instituteDomain);
          copyObj.setTypeOfInstitution(typeOfInstitution);
          copyObj.setAffiliation(affiliation);
          copyObj.setInstituteWebsite(instituteWebsite);
          copyObj.setAdminFname(adminFname);
          copyObj.setAdminLname(adminLname);
          copyObj.setAdminEmail(adminEmail);
          copyObj.setAdminDesignation(adminDesignation);
          copyObj.setAdminUname(adminUname);
          copyObj.setAdminPassword(adminPassword);
          copyObj.setInstituteStatus(instituteStatus);
  
                    copyObj.setInstituteId(0);
                                                                                                                  
        
        return copyObj;
    }

    /**
     * returns a peer instance associated with this om.  Since Peer classes
     * are not to have any instance attributes, this method returns the
     * same instance for all member of this class. The method could therefore
     * be static, but this would prevent one from overriding the behavior.
     */
    public InstituteAdminRegistrationPeer getPeer()
    {
        return peer;
    }

    public String toString()
    {
        StringBuffer str = new StringBuffer();
        str.append("InstituteAdminRegistration:\n");
        str.append("InstituteId = ")
           .append(getInstituteId())
           .append("\n");
        str.append("InstituteName = ")
           .append(getInstituteName())
           .append("\n");
        str.append("InstiuteAddress = ")
           .append(getInstiuteAddress())
           .append("\n");
        str.append("City = ")
           .append(getCity())
           .append("\n");
        str.append("Pincode = ")
           .append(getPincode())
           .append("\n");
        str.append("State = ")
           .append(getState())
           .append("\n");
        str.append("LandlineNo = ")
           .append(getLandlineNo())
           .append("\n");
        str.append("InstituteDomain = ")
           .append(getInstituteDomain())
           .append("\n");
        str.append("TypeOfInstitution = ")
           .append(getTypeOfInstitution())
           .append("\n");
        str.append("Affiliation = ")
           .append(getAffiliation())
           .append("\n");
        str.append("InstituteWebsite = ")
           .append(getInstituteWebsite())
           .append("\n");
        str.append("AdminFname = ")
           .append(getAdminFname())
           .append("\n");
        str.append("AdminLname = ")
           .append(getAdminLname())
           .append("\n");
        str.append("AdminEmail = ")
           .append(getAdminEmail())
           .append("\n");
        str.append("AdminDesignation = ")
           .append(getAdminDesignation())
           .append("\n");
        str.append("AdminUname = ")
           .append(getAdminUname())
           .append("\n");
        str.append("AdminPassword = ")
           .append(getAdminPassword())
           .append("\n");
        str.append("InstituteStatus = ")
           .append(getInstituteStatus())
           .append("\n");
        return(str.toString());
    }
}

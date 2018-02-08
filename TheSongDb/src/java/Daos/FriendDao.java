/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Daos;

import static Daos.Dao.freeConnection;
import Dtos.Friend;
import com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException;

/**
 *
 * @author emmet
 */


public class FriendDao extends Dao implements FriendDaoInterface {

    public FriendDao(String databaseName) {
        super(databaseName);
    }
    
    public FriendDao(String databaseName, String poolName){
        super(databaseName, poolName);
    }
}

package models;

import models.AbstractModel;

public class UserModel extends AbstractModel
{
    @Override
    protected String tableName() {
        return "users";
    }
}
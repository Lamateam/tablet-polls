package models;

import models.AbstractModel;

public class CardsModel extends AbstractModel
{
    @Override
    protected String tableName() {
        return "cards";
    }
}
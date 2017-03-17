package ${packageName}.bean;


import ${packageName}.type.MultiTypeFactory;


public class ItemA implements ViewItem {

    private String aName;


    @Override
    public int type(MultiTypeFactory typeFactory) {
        return typeFactory.type(this);
    }

    public String getAName() {
        return aName;
    }

    public void setAName(String textName) {
        this.aName = textName;
    }

}

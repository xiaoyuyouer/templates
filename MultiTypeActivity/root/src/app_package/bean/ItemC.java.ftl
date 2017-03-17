package ${packageName}.bean;


import ${packageName}.type.MultiTypeFactory;


public class ItemC implements ViewItem {

    private String cName;

    @Override
    public int type(MultiTypeFactory typeFactory) {
        return typeFactory.type(this);
    }

    public String getCName() {
        return cName;
    }

    public void setCName(String textInfo) {
        this.cName = textInfo;
    }
}

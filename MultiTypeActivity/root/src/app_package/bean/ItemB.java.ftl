package ${packageName}.bean;


import ${packageName}.type.MultiTypeFactory;


public class ItemB implements ViewItem {

    private String bName;


    @Override
    public int type(MultiTypeFactory typeFactory) {
        return typeFactory.type(this);
    }

    public String getBName() {
        return bName;
    }

    public void setBName(String textName) {
        this.bName = textName;
    }

}

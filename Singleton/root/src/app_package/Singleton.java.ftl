package ${packageName};

<#if singletonType == 'Atomic'>
import java.util.concurrent.atomic.AtomicReference;
</#if>

public class ${className} {

    <#if singletonType == 'Atomic'>
    private final static AtomicReference<${className}> INSTANCE = new AtomicReference<>();
    </#if>

    <#if singletonType == 'Normal'>
    private volatile static ${className} INSTANCE;
    </#if>

    public ${className}() {}

    public static ${className} getInstance() {
        <#if singletonType == 'Atomic'>
        for (; ; ) {
            ${className} factory = INSTANCE.get();
            if (factory != null) {
                return factory;
            }
            factory = new ${className}();
            if (INSTANCE.compareAndSet(null, factory)) {
                return factory;
            }
        }
        </#if>
        <#if singletonType == 'Normal'>
        if (INSTANCE == null) {
            synchronized (${className}.class) {
                if (INSTANCE == null) {
                    INSTANCE = new ${className}();
                }
            }
        }
        return INSTANCE;
        </#if>
    }
}
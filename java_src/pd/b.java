package pd;

import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public interface b extends a {
    Object call(Object... objArr);

    Object callBy(Map map);

    String getName();

    List getParameters();

    l getReturnType();

    List getTypeParameters();

    m getVisibility();

    boolean isAbstract();

    boolean isFinal();

    boolean isOpen();
}

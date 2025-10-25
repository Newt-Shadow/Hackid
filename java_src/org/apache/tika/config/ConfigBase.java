package org.apache.tika.config;

import io.flutter.plugins.firebase.crashlytics.Constants;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.apache.tika.exception.TikaConfigException;
import org.apache.tika.exception.TikaException;
import org.apache.tika.utils.StringUtils;
import org.apache.tika.utils.XMLReaderUtils;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;
/* loaded from: classes2.dex */
public abstract class ConfigBase {
    private static Class[] SUPPORTED_PRIMITIVES = {String.class, Boolean.TYPE, Long.TYPE, Integer.TYPE, Double.TYPE, Float.TYPE};

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class SetterClassPair {
        private final Class itemClass;
        private final Method setterMethod;

        public SetterClassPair(Method method, Class cls) {
            this.setterMethod = method;
            this.itemClass = cls;
        }

        public String toString() {
            Method method = this.setterMethod;
            Class cls = this.itemClass;
            return "SetterClassPair{setterMethod=" + method + ", itemClass=" + cls + "}";
        }
    }

    private static <T> T buildClass(Node node, String str, Class cls) {
        String name = cls.getName();
        Node namedItem = node.getAttributes().getNamedItem(Constants.CLASS);
        if (namedItem != null) {
            name = namedItem.getTextContent();
        }
        try {
            Class<?> cls2 = Class.forName(name);
            if (cls.isAssignableFrom(cls2)) {
                return (T) cls2.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            }
            String name2 = cls.getName();
            throw new TikaConfigException(str + " with class name " + name + " must be of type '" + name2 + "'");
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e10) {
            String name3 = cls.getName();
            throw new TikaConfigException("problem loading " + str + " with class " + name3, e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <P, T> P buildComposite(String str, Class<P> cls, String str2, Class<T> cls2, InputStream inputStream) {
        try {
            return (P) buildComposite(str, cls, str2, cls2, XMLReaderUtils.buildDOM(inputStream).getDocumentElement());
        } catch (TikaException e10) {
            throw new TikaConfigException("problem loading xml to dom", e10);
        } catch (SAXException e11) {
            throw new IOException(e11);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T> T buildSingle(String str, Class<T> cls, InputStream inputStream) {
        try {
            Element documentElement = XMLReaderUtils.buildDOM(inputStream).getDocumentElement();
            if (documentElement.getLocalName().equals("properties")) {
                return (T) buildSingle(str, cls, documentElement, null);
            }
            throw new TikaConfigException("expect properties as root node");
        } catch (TikaException e10) {
            throw new TikaConfigException("problem loading xml to dom", e10);
        } catch (SAXException e11) {
            throw new IOException(e11);
        }
    }

    private static SetterClassPair findSetterClassPair(Object obj, String str) {
        Method[] methods;
        Method[] methods2;
        String str2 = "set" + str.substring(0, 1).toUpperCase(Locale.US) + str.substring(1);
        Method method = null;
        Class<?> cls = null;
        for (Method method2 : obj.getClass().getMethods()) {
            if (str2.equals(method2.getName())) {
                Class<?>[] parameterTypes = method2.getParameterTypes();
                if (parameterTypes.length == 1 && (cls == null || parameterTypes[0].equals(String.class))) {
                    cls = parameterTypes[0];
                    method = method2;
                }
            }
        }
        if (method != null && cls != null) {
            return new SetterClassPair(method, cls);
        }
        String str3 = "add" + str.substring(0, 1).toUpperCase(Locale.US) + str.substring(1);
        for (Method method3 : obj.getClass().getMethods()) {
            if (str3.equals(method3.getName())) {
                Class<?>[] parameterTypes2 = method3.getParameterTypes();
                if (parameterTypes2.length == 1 && (cls == null || parameterTypes2[0].equals(String.class))) {
                    cls = parameterTypes2[0];
                    method = method3;
                }
            }
        }
        if (method == null && cls == null) {
            throw new TikaConfigException("Couldn't find setter '" + str2 + "' or adder '" + str3 + "' for " + str + " of class: " + obj.getClass());
        }
        return new SetterClassPair(method, cls);
    }

    private static boolean hasChildNodes(Node node) {
        if (!node.hasChildNodes()) {
            return false;
        }
        NodeList childNodes = node.getChildNodes();
        for (int i10 = 0; i10 < childNodes.getLength(); i10++) {
            if (childNodes.item(i10).getNodeType() == 1) {
                return true;
            }
        }
        return false;
    }

    private static boolean hasClass(Node node) {
        if (node.hasAttributes() && node.getAttributes().getNamedItem(Constants.CLASS) != null) {
            return true;
        }
        return false;
    }

    private static boolean isMap(Node node) {
        NodeList childNodes = node.getChildNodes();
        for (int i10 = 0; i10 < childNodes.getLength(); i10++) {
            Node item = childNodes.item(i10);
            if (item.getNodeType() == 1 && item.hasAttributes()) {
                if (item.getAttributes().getNamedItem("from") != null && item.getAttributes().getNamedItem("to") != null) {
                    return true;
                }
                if (item.getAttributes().getNamedItem("k") != null && item.getAttributes().getNamedItem("v") != null) {
                    return true;
                }
            }
        }
        return false;
    }

    private static boolean isPrimitive(Class cls) {
        int i10 = 0;
        while (true) {
            Class[] clsArr = SUPPORTED_PRIMITIVES;
            if (i10 >= clsArr.length) {
                return false;
            }
            if (clsArr[i10].equals(cls)) {
                return true;
            }
            i10++;
        }
    }

    private static <T> List<T> loadComposite(Node node, String str, Class<? extends T> cls) {
        NodeList childNodes = node.getChildNodes();
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < childNodes.getLength(); i10++) {
            Node item = childNodes.item(i10);
            if (item.getNodeType() == 1 && str.equals(item.getLocalName())) {
                Object buildClass = buildClass(item, str, cls);
                setParams(buildClass, item, new HashSet());
                arrayList.add(buildClass);
            }
        }
        return arrayList;
    }

    private static void setParams(Object obj, Node node, Set<String> set) {
        setParams(obj, node, set, null);
    }

    private static void tryToSetClassList(Object obj, Node node) {
        String localName = node.getLocalName();
        try {
            Class<?> cls = Class.forName(node.getAttributes().getNamedItem(Constants.CLASS).getTextContent());
            ArrayList arrayList = new ArrayList();
            NodeList childNodes = node.getChildNodes();
            for (int i10 = 0; i10 < childNodes.getLength(); i10++) {
                Node item = childNodes.item(i10);
                if (item.getNodeType() == 1) {
                    Object buildClass = buildClass(item, item.getLocalName(), cls);
                    setParams(buildClass, item, new HashSet());
                    arrayList.add(buildClass);
                }
            }
            obj.getClass().getMethod("set" + localName.substring(0, 1).toUpperCase(Locale.US) + localName.substring(1), List.class).invoke(obj, arrayList);
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException e10) {
            throw new TikaConfigException("couldn't build class for " + localName, e10);
        }
    }

    private static void tryToSetList(Object obj, Node node) {
        if (hasClass(node)) {
            tryToSetClassList(obj, node);
        } else {
            tryToSetStringList(obj, node);
        }
    }

    private static void tryToSetMap(Object obj, Node node) {
        String str;
        String localName = node.getLocalName();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        NodeList childNodes = node.getChildNodes();
        for (int i10 = 0; i10 < childNodes.getLength(); i10++) {
            Node item = childNodes.item(i10);
            if (item.getNodeType() == 1) {
                NamedNodeMap attributes = item.getAttributes();
                String str2 = null;
                if (attributes.getNamedItem("from") != null) {
                    str = attributes.getNamedItem("from").getTextContent();
                } else if (attributes.getNamedItem("key") != null) {
                    str = attributes.getNamedItem("key").getTextContent();
                } else if (attributes.getNamedItem("k") != null) {
                    str = attributes.getNamedItem("k").getTextContent();
                } else {
                    str = null;
                }
                if (attributes.getNamedItem("to") != null) {
                    str2 = attributes.getNamedItem("to").getTextContent();
                } else if (attributes.getNamedItem("value") != null) {
                    str2 = attributes.getNamedItem("value").getTextContent();
                } else if (attributes.getNamedItem("v") != null) {
                    str2 = attributes.getNamedItem("v").getTextContent();
                }
                if (str != null) {
                    if (str2 != null) {
                        linkedHashMap.put(str, str2);
                    } else {
                        throw new TikaConfigException("must specify a 'value' or 'to' value in a map object : " + node);
                    }
                } else {
                    throw new TikaConfigException("must specify a 'key' or 'from' value in a map object : " + node);
                }
            }
        }
        try {
            obj.getClass().getMethod("set" + localName.substring(0, 1).toUpperCase(Locale.US) + localName.substring(1), Map.class).invoke(obj, linkedHashMap);
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e10) {
            throw new TikaConfigException("can't set " + localName, e10);
        }
    }

    private static void tryToSetPrimitive(Object obj, SetterClassPair setterClassPair, String str) {
        try {
            if (setterClassPair.itemClass == Integer.TYPE) {
                setterClassPair.setterMethod.invoke(obj, Integer.valueOf(Integer.parseInt(str)));
            } else if (setterClassPair.itemClass == Long.TYPE) {
                setterClassPair.setterMethod.invoke(obj, Long.valueOf(Long.parseLong(str)));
            } else if (setterClassPair.itemClass == Float.TYPE) {
                setterClassPair.setterMethod.invoke(obj, Float.valueOf(Float.parseFloat(str)));
            } else if (setterClassPair.itemClass == Double.TYPE) {
                setterClassPair.setterMethod.invoke(obj, Double.valueOf(Double.parseDouble(str)));
            } else if (setterClassPair.itemClass == Boolean.TYPE) {
                setterClassPair.setterMethod.invoke(obj, Boolean.valueOf(Boolean.parseBoolean(str)));
            } else {
                setterClassPair.setterMethod.invoke(obj, str);
            }
        } catch (IllegalAccessException | InvocationTargetException e10) {
            throw new TikaConfigException("bad parameter " + setterClassPair + StringUtils.SPACE + str, e10);
        }
    }

    private static void tryToSetStringList(Object obj, Node node) {
        String textContent;
        String localName = node.getLocalName();
        ArrayList arrayList = new ArrayList();
        NodeList childNodes = node.getChildNodes();
        for (int i10 = 0; i10 < childNodes.getLength(); i10++) {
            Node item = childNodes.item(i10);
            if (item.getNodeType() == 1 && (textContent = item.getTextContent()) != null) {
                arrayList.add(textContent);
            }
        }
        try {
            obj.getClass().getMethod("set" + localName.substring(0, 1).toUpperCase(Locale.US) + localName.substring(1), List.class).invoke(obj, arrayList);
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e10) {
            throw new TikaConfigException("can't set " + localName, e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Set<String> configure(String str, InputStream inputStream) {
        HashSet hashSet = new HashSet();
        try {
            Element documentElement = XMLReaderUtils.buildDOM(inputStream).getDocumentElement();
            if (documentElement.getLocalName().equals("properties")) {
                NodeList childNodes = documentElement.getChildNodes();
                for (int i10 = 0; i10 < childNodes.getLength(); i10++) {
                    Node item = childNodes.item(i10);
                    if (str.equals(item.getLocalName())) {
                        setParams(this, item, hashSet);
                    }
                }
                return hashSet;
            }
            throw new TikaConfigException("expect properties as root node");
        } catch (TikaException e10) {
            throw new TikaConfigException("problem loading xml to dom", e10);
        } catch (SAXException e11) {
            throw new IOException(e11);
        }
    }

    protected void handleSettings(Set<String> set) {
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00f0 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void setParams(java.lang.Object r10, org.w3c.dom.Node r11, java.util.Set<java.lang.String> r12, java.lang.String r13) {
        /*
            org.w3c.dom.NodeList r11 = r11.getChildNodes()
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            r2 = r1
        Lb:
            int r3 = r11.getLength()
            if (r2 >= r3) goto L3c
            org.w3c.dom.Node r3 = r11.item(r2)
            java.lang.String r4 = r3.getLocalName()
            java.lang.String r5 = "params"
            boolean r4 = r5.equals(r4)
            if (r4 == 0) goto L36
            org.w3c.dom.NodeList r3 = r3.getChildNodes()
            r4 = r1
        L26:
            int r5 = r3.getLength()
            if (r4 >= r5) goto L39
            org.w3c.dom.Node r5 = r3.item(r4)
            r0.add(r5)
            int r4 = r4 + 1
            goto L26
        L36:
            r0.add(r3)
        L39:
            int r2 = r2 + 1
            goto Lb
        L3c:
            r11 = r1
        L3d:
            int r2 = r0.size()
            if (r11 >= r2) goto Lf4
            java.lang.Object r2 = r0.get(r11)
            org.w3c.dom.Node r2 = (org.w3c.dom.Node) r2
            short r3 = r2.getNodeType()
            r4 = 1
            if (r3 == r4) goto L52
            goto Lf0
        L52:
            java.lang.String r3 = r2.getLocalName()
            if (r3 == 0) goto Lf0
            boolean r5 = r3.equals(r13)
            if (r5 == 0) goto L60
            goto Lf0
        L60:
            java.lang.String r5 = r2.getTextContent()
            java.lang.String r6 = r2.getLocalName()
            org.apache.tika.config.ConfigBase$SetterClassPair r7 = findSetterClassPair(r10, r6)
            boolean r8 = hasClass(r2)
            if (r8 != 0) goto L98
            java.lang.Class r8 = org.apache.tika.config.ConfigBase.SetterClassPair.a(r7)
            java.lang.Class<java.util.Map> r9 = java.util.Map.class
            boolean r8 = r8.isAssignableFrom(r9)
            if (r8 == 0) goto L88
            boolean r8 = isMap(r2)
            if (r8 == 0) goto L88
            tryToSetMap(r10, r2)
            goto L99
        L88:
            java.lang.Class r8 = org.apache.tika.config.ConfigBase.SetterClassPair.a(r7)
            java.lang.Class<java.util.List> r9 = java.util.List.class
            boolean r8 = r8.isAssignableFrom(r9)
            if (r8 == 0) goto L98
            tryToSetList(r10, r2)
            goto L99
        L98:
            r4 = r1
        L99:
            if (r4 != 0) goto Leb
            java.lang.Class r4 = org.apache.tika.config.ConfigBase.SetterClassPair.a(r7)
            boolean r4 = isPrimitive(r4)
            if (r4 == 0) goto Lad
            java.lang.String r2 = r2.getTextContent()
            tryToSetPrimitive(r10, r7, r2)
            goto Leb
        Lad:
            java.lang.Class r4 = org.apache.tika.config.ConfigBase.SetterClassPair.a(r7)
            java.lang.Object r4 = buildClass(r2, r6, r4)
            java.lang.Class r8 = org.apache.tika.config.ConfigBase.SetterClassPair.a(r7)
            java.lang.Object r8 = r8.cast(r4)
            java.util.HashSet r9 = new java.util.HashSet
            r9.<init>()
            setParams(r8, r2, r9)
            java.lang.reflect.Method r2 = org.apache.tika.config.ConfigBase.SetterClassPair.b(r7)     // Catch: java.lang.reflect.InvocationTargetException -> Ld1 java.lang.IllegalAccessException -> Ld3
            java.lang.Object[] r4 = new java.lang.Object[]{r4}     // Catch: java.lang.reflect.InvocationTargetException -> Ld1 java.lang.IllegalAccessException -> Ld3
            r2.invoke(r10, r4)     // Catch: java.lang.reflect.InvocationTargetException -> Ld1 java.lang.IllegalAccessException -> Ld3
            goto Leb
        Ld1:
            r10 = move-exception
            goto Ld4
        Ld3:
            r10 = move-exception
        Ld4:
            org.apache.tika.exception.TikaConfigException r11 = new org.apache.tika.exception.TikaConfigException
            java.lang.StringBuilder r12 = new java.lang.StringBuilder
            r12.<init>()
            java.lang.String r13 = "problem creating "
            r12.append(r13)
            r12.append(r6)
            java.lang.String r12 = r12.toString()
            r11.<init>(r12, r10)
            throw r11
        Leb:
            if (r5 == 0) goto Lf0
            r12.add(r3)
        Lf0:
            int r11 = r11 + 1
            goto L3d
        Lf4:
            boolean r11 = r10 instanceof org.apache.tika.config.Initializable
            if (r11 == 0) goto L104
            org.apache.tika.config.Initializable r10 = (org.apache.tika.config.Initializable) r10
            java.util.Map r11 = java.util.Collections.EMPTY_MAP
            r10.initialize(r11)
            org.apache.tika.config.InitializableProblemHandler r11 = org.apache.tika.config.InitializableProblemHandler.THROW
            r10.checkInitialization(r11)
        L104:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.tika.config.ConfigBase.setParams(java.lang.Object, org.w3c.dom.Node, java.util.Set, java.lang.String):void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <P, T> P buildComposite(String str, Class<P> cls, String str2, Class<T> cls2, Element element) {
        if (element.getLocalName().equals("properties")) {
            NodeList childNodes = element.getChildNodes();
            for (int i10 = 0; i10 < childNodes.getLength(); i10++) {
                Node item = childNodes.item(i10);
                if (item.getNodeType() == 1 && str.equals(item.getLocalName())) {
                    try {
                        P newInstance = cls.getConstructor(List.class).newInstance(loadComposite(item, str2, cls2));
                        setParams(newInstance, item, new HashSet(), str2);
                        return newInstance;
                    } catch (IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e10) {
                        throw new TikaConfigException("can't build composite class", e10);
                    }
                }
            }
            throw new TikaConfigException("could not find " + str);
        }
        throw new TikaConfigException("expect properties as root node");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T> T buildSingle(String str, Class<T> cls, Element element, T t10) {
        NodeList childNodes = element.getChildNodes();
        T t11 = null;
        for (int i10 = 0; i10 < childNodes.getLength(); i10++) {
            Node item = childNodes.item(i10);
            if (item.getNodeType() == 1 && str.equals(item.getLocalName())) {
                if (t11 == null) {
                    t11 = (T) buildClass(item, str, cls);
                    setParams(t11, item, new HashSet());
                } else {
                    throw new TikaConfigException("There can only be one " + str + " in a config");
                }
            }
        }
        if (t11 == null) {
            if (t10 != null) {
                return t10;
            }
            throw new TikaConfigException("could not find " + str);
        }
        return t11;
    }
}

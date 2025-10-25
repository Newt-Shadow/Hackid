package org.apache.tika.config;

import io.flutter.plugins.firebase.crashlytics.Constants;
import java.io.Writer;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.xml.transform.Transformer;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.apache.tika.detect.CompositeDetector;
import org.apache.tika.detect.CompositeEncodingDetector;
import org.apache.tika.detect.DefaultDetector;
import org.apache.tika.detect.DefaultEncodingDetector;
import org.apache.tika.detect.Detector;
import org.apache.tika.detect.EncodingDetector;
import org.apache.tika.language.translate.DefaultTranslator;
import org.apache.tika.language.translate.Translator;
import org.apache.tika.mime.MediaType;
import org.apache.tika.parser.DefaultParser;
import org.apache.tika.parser.ParseContext;
import org.apache.tika.parser.Parser;
import org.apache.tika.parser.ParserDecorator;
import org.apache.tika.parser.external.ExternalParsersConfigReaderMetKeys;
import org.apache.tika.parser.multiple.AbstractMultipleParser;
import org.apache.tika.utils.StringUtils;
import org.apache.tika.utils.XMLReaderUtils;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
/* loaded from: classes2.dex */
public class TikaConfigSerializer {
    private static final mf.c LOG = mf.e.l(TikaConfigSerializer.class);
    private static Map<Class, String> PRIMITIVES;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class MethodTuple {
        Method method;
        String name;
        Class singleParam;

        public MethodTuple(String str, Method method, Class cls) {
            this.name = str;
            this.method = method;
            this.singleParam = cls;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            MethodTuple methodTuple = (MethodTuple) obj;
            if (this.name.equals(methodTuple.name) && this.method.equals(methodTuple.method) && this.singleParam.equals(methodTuple.singleParam)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Objects.hash(this.name, this.method, this.singleParam);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class MethodTuples {
        Map<String, Set<MethodTuple>> tuples;

        public void add(MethodTuple methodTuple) {
            Set<MethodTuple> set = this.tuples.get(methodTuple.name);
            if (set == null) {
                set = new HashSet<>();
                this.tuples.put(methodTuple.name, set);
            }
            set.add(methodTuple);
        }

        public int getSize() {
            return this.tuples.size();
        }

        private MethodTuples() {
            this.tuples = new TreeMap();
        }
    }

    /* loaded from: classes2.dex */
    public enum Mode {
        MINIMAL,
        CURRENT,
        STATIC,
        STATIC_FULL
    }

    static {
        HashMap hashMap = new HashMap();
        PRIMITIVES = hashMap;
        hashMap.put(Integer.class, "int");
        PRIMITIVES.put(Integer.TYPE, "int");
        PRIMITIVES.put(String.class, "string");
        PRIMITIVES.put(Boolean.class, "bool");
        PRIMITIVES.put(Boolean.TYPE, "bool");
        PRIMITIVES.put(Float.class, "float");
        PRIMITIVES.put(Float.TYPE, "float");
        PRIMITIVES.put(Double.class, "double");
        PRIMITIVES.put(Double.TYPE, "double");
        PRIMITIVES.put(Long.class, "long");
        PRIMITIVES.put(Long.TYPE, "long");
        PRIMITIVES.put(Map.class, "map");
        PRIMITIVES.put(List.class, "list");
    }

    private static void addDetectors(Mode mode, Element element, Document document, TikaConfig tikaConfig) {
        Detector detector = tikaConfig.getDetector();
        if (mode == Mode.MINIMAL && (detector instanceof DefaultDetector)) {
            element.appendChild(document.createComment("for example: <detectors><detector class=\"org.apache.tika.detector.MimeTypes\"></detectors>"));
            return;
        }
        Element createElement = document.createElement("detectors");
        if ((mode == Mode.CURRENT && (detector instanceof DefaultDetector)) || !(detector instanceof CompositeDetector)) {
            Element createElement2 = document.createElement("detector");
            createElement2.setAttribute(Constants.CLASS, detector.getClass().getCanonicalName());
            createElement.appendChild(createElement2);
        } else {
            for (Detector detector2 : ((CompositeDetector) detector).getDetectors()) {
                Element createElement3 = document.createElement("detector");
                createElement3.setAttribute(Constants.CLASS, detector2.getClass().getCanonicalName());
                serializeParams(document, createElement3, detector2);
                createElement.appendChild(createElement3);
            }
        }
        element.appendChild(createElement);
    }

    private static void addEncodingDetectors(Mode mode, Element element, Document document, TikaConfig tikaConfig) {
        EncodingDetector encodingDetector = tikaConfig.getEncodingDetector();
        if (mode == Mode.MINIMAL && (encodingDetector instanceof DefaultEncodingDetector)) {
            element.appendChild(document.createComment("for example: <encodingDetectors><encodingDetector class=\"org.apache.tika.detect.DefaultEncodingDetector\"></encodingDetectors>"));
            return;
        }
        Element createElement = document.createElement("encodingDetectors");
        if ((mode == Mode.CURRENT && (encodingDetector instanceof DefaultEncodingDetector)) || !(encodingDetector instanceof CompositeEncodingDetector)) {
            Element createElement2 = document.createElement("encodingDetector");
            createElement2.setAttribute(Constants.CLASS, encodingDetector.getClass().getCanonicalName());
            createElement.appendChild(createElement2);
        } else {
            for (EncodingDetector encodingDetector2 : ((CompositeEncodingDetector) encodingDetector).getDetectors()) {
                Element createElement3 = document.createElement("encodingDetector");
                createElement3.setAttribute(Constants.CLASS, encodingDetector2.getClass().getCanonicalName());
                serializeParams(document, createElement3, encodingDetector2);
                createElement.appendChild(createElement3);
            }
        }
        element.appendChild(createElement);
    }

    private static void addExecutorService(Mode mode, Element element, Document document, TikaConfig tikaConfig) {
        tikaConfig.getExecutorService();
    }

    private static void addList(Element element, Document document, MethodTuple methodTuple, List<String> list) {
        for (String str : list) {
            Element createElement = document.createElement("string");
            createElement.setTextContent(str);
            element.appendChild(createElement);
        }
    }

    private static void addMap(Element element, Document document, MethodTuple methodTuple, Map<String, String> map) {
        for (Map.Entry entry : new TreeMap(map).entrySet()) {
            Element createElement = document.createElement("string");
            createElement.setAttribute("key", (String) entry.getKey());
            createElement.setAttribute("value", (String) entry.getValue());
            element.appendChild(createElement);
        }
    }

    private static void addMimeComment(Mode mode, Element element, Document document) {
        element.appendChild(document.createComment("for example: <mimeTypeRepository resource=\"/org/apache/tika/mime/tika-mimetypes.xml\"/>"));
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0081 A[LOOP:0: B:28:0x007b->B:30:0x0081, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void addParser(org.apache.tika.config.TikaConfigSerializer.Mode r6, org.w3c.dom.Element r7, org.w3c.dom.Document r8, org.apache.tika.parser.Parser r9) {
        /*
            boolean r0 = r9 instanceof org.apache.tika.parser.ParserDecorator
            if (r0 == 0) goto L33
            java.lang.Class r0 = r9.getClass()
            java.lang.String r0 = r0.getName()
            java.lang.Class<org.apache.tika.parser.ParserDecorator> r1 = org.apache.tika.parser.ParserDecorator.class
            java.lang.String r1 = r1.getName()
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r2.append(r1)
            java.lang.String r1 = "$"
            r2.append(r1)
            java.lang.String r1 = r2.toString()
            boolean r0 = r0.startsWith(r1)
            if (r0 == 0) goto L33
            org.apache.tika.parser.ParserDecorator r9 = (org.apache.tika.parser.ParserDecorator) r9
            org.apache.tika.parser.Parser r0 = r9.getWrappedParser()
            r5 = r0
            r0 = r9
            r9 = r5
            goto L34
        L33:
            r0 = 0
        L34:
            java.util.List r1 = java.util.Collections.emptyList()
            org.apache.tika.config.TikaConfigSerializer$Mode r2 = org.apache.tika.config.TikaConfigSerializer.Mode.CURRENT
            r3 = 1
            if (r6 != r2) goto L42
            boolean r2 = r9 instanceof org.apache.tika.parser.DefaultParser
            if (r2 == 0) goto L42
            goto L71
        L42:
            boolean r2 = r9 instanceof org.apache.tika.parser.CompositeParser
            if (r2 == 0) goto L66
            r1 = r9
            org.apache.tika.parser.CompositeParser r1 = (org.apache.tika.parser.CompositeParser) r1
            java.util.List r1 = r1.getAllComponentParsers()
            java.lang.Class r2 = r9.getClass()
            java.lang.Class<org.apache.tika.parser.CompositeParser> r4 = org.apache.tika.parser.CompositeParser.class
            boolean r2 = r2.equals(r4)
            r3 = r3 ^ r2
            boolean r2 = r9 instanceof org.apache.tika.parser.DefaultParser
            if (r2 == 0) goto L71
            org.apache.tika.config.TikaConfigSerializer$Mode r2 = org.apache.tika.config.TikaConfigSerializer.Mode.STATIC
            if (r6 == r2) goto L64
            org.apache.tika.config.TikaConfigSerializer$Mode r2 = org.apache.tika.config.TikaConfigSerializer.Mode.STATIC_FULL
            if (r6 != r2) goto L71
        L64:
            r3 = 0
            goto L71
        L66:
            boolean r2 = r9 instanceof org.apache.tika.parser.multiple.AbstractMultipleParser
            if (r2 == 0) goto L71
            r1 = r9
            org.apache.tika.parser.multiple.AbstractMultipleParser r1 = (org.apache.tika.parser.multiple.AbstractMultipleParser) r1
            java.util.List r1 = r1.getAllParsers()
        L71:
            if (r3 == 0) goto L77
            org.w3c.dom.Element r7 = addParser(r6, r7, r8, r9, r0)
        L77:
            java.util.Iterator r9 = r1.iterator()
        L7b:
            boolean r0 = r9.hasNext()
            if (r0 == 0) goto L8b
            java.lang.Object r0 = r9.next()
            org.apache.tika.parser.Parser r0 = (org.apache.tika.parser.Parser) r0
            addParser(r6, r7, r8, r0)
            goto L7b
        L8b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.tika.config.TikaConfigSerializer.addParser(org.apache.tika.config.TikaConfigSerializer$Mode, org.w3c.dom.Element, org.w3c.dom.Document, org.apache.tika.parser.Parser):void");
    }

    private static void addParsers(Mode mode, Element element, Document document, TikaConfig tikaConfig) {
        Parser parser = tikaConfig.getParser();
        Mode mode2 = Mode.MINIMAL;
        if (mode == mode2 && (parser instanceof DefaultParser)) {
            return;
        }
        if (mode == mode2) {
            mode = Mode.CURRENT;
        }
        Element createElement = document.createElement("parsers");
        element.appendChild(createElement);
        addParser(mode, createElement, document, parser);
    }

    private static void addServiceLoader(Mode mode, Element element, Document document, TikaConfig tikaConfig) {
        ServiceLoader serviceLoader = tikaConfig.getServiceLoader();
        if (mode == Mode.MINIMAL && serviceLoader.isDynamic() && serviceLoader.getLoadErrorHandler() == LoadErrorHandler.IGNORE) {
            return;
        }
        Element createElement = document.createElement("service-loader");
        createElement.setAttribute("dynamic", Boolean.toString(serviceLoader.isDynamic()));
        createElement.setAttribute("loadErrorHandler", serviceLoader.getLoadErrorHandler().toString());
        element.appendChild(createElement);
    }

    private static void addTranslator(Mode mode, Element element, Document document, TikaConfig tikaConfig) {
        Translator translator = tikaConfig.getTranslator();
        if (mode == Mode.MINIMAL && (translator instanceof DefaultTranslator)) {
            element.appendChild(document.createComment("for example: <translator class=\"org.apache.tika.language.translate.GoogleTranslator\"/>"));
            return;
        }
        if ((translator instanceof DefaultTranslator) && (mode == Mode.STATIC || mode == Mode.STATIC_FULL)) {
            translator = ((DefaultTranslator) translator).getTranslator();
        }
        if (translator != null) {
            Element createElement = document.createElement("translator");
            createElement.setAttribute(Constants.CLASS, translator.getClass().getCanonicalName());
            element.appendChild(createElement);
            return;
        }
        element.appendChild(document.createComment("No translators available"));
    }

    private static Method findGetter(MethodTuple methodTuple, Object obj) {
        Method[] methods;
        Matcher matcher = Pattern.compile("\\A(?:get|is)([A-Z].+)\\Z").matcher("");
        for (Method method : obj.getClass().getMethods()) {
            if (obj.getClass().getName().contains("PDF")) {
                System.out.println(method.getName());
            }
            if (matcher.reset(method.getName()).find()) {
                if (obj.getClass().getName().contains("PDF")) {
                    System.out.println("2: " + method.getName());
                }
                if (methodTuple.name.equals(matcher.group(1))) {
                    if (methodTuple.singleParam.equals(method.getReturnType())) {
                        return method;
                    }
                } else {
                    continue;
                }
            }
        }
        return null;
    }

    private static String methodToParamName(String str) {
        if (StringUtils.isBlank(str)) {
            return str;
        }
        String lowerCase = str.substring(0, 1).toLowerCase(Locale.US);
        String substring = str.substring(1);
        return lowerCase + substring;
    }

    private static MethodTuple pickBestSetter(Set<MethodTuple> set) {
        Iterator<MethodTuple> it = set.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        return null;
    }

    private static void processNonPrimitive(String str, Set<MethodTuple> set, Set<MethodTuple> set2, Document document, Element element, Object obj) {
        for (MethodTuple methodTuple : set) {
            for (MethodTuple methodTuple2 : set2) {
                if (methodTuple.singleParam.equals(methodTuple2.singleParam)) {
                    serializeObject(str, document, element, methodTuple, methodTuple2, obj);
                    return;
                }
            }
        }
    }

    public static void serialize(TikaConfig tikaConfig, Mode mode, Writer writer, Charset charset) {
        Document newDocument = XMLReaderUtils.getDocumentBuilder().newDocument();
        Element createElement = newDocument.createElement("properties");
        newDocument.appendChild(createElement);
        addMimeComment(mode, createElement, newDocument);
        addServiceLoader(mode, createElement, newDocument, tikaConfig);
        addExecutorService(mode, createElement, newDocument, tikaConfig);
        addEncodingDetectors(mode, createElement, newDocument, tikaConfig);
        addTranslator(mode, createElement, newDocument, tikaConfig);
        addDetectors(mode, createElement, newDocument, tikaConfig);
        addParsers(mode, createElement, newDocument, tikaConfig);
        Transformer transformer = XMLReaderUtils.getTransformer();
        transformer.setOutputProperty("indent", "yes");
        transformer.setOutputProperty("{http://xml.apache.org/xslt}indent-amount", "2");
        transformer.setOutputProperty("encoding", charset.name());
        transformer.transform(new DOMSource(newDocument), new StreamResult(writer));
    }

    private static void serializeNonPrimitives(Document document, Element element, Object obj, MethodTuples methodTuples, MethodTuples methodTuples2) {
        for (Map.Entry<String, Set<MethodTuple>> entry : methodTuples.tuples.entrySet()) {
            processNonPrimitive(entry.getKey(), entry.getValue(), methodTuples2.tuples.get(entry.getKey()), document, element, obj);
            if (!methodTuples2.tuples.containsKey(entry.getKey())) {
                LOG.l("no getter for setter non-primitive: {} in {}", entry.getKey(), obj.getClass());
            }
        }
    }

    private static void serializeObject(String str, Document document, Element element, MethodTuple methodTuple, MethodTuple methodTuple2, Object obj) {
        try {
            Object invoke = methodTuple2.method.invoke(obj, new Object[0]);
            if (invoke == null) {
                LOG.l("Getter {} on {} returned null", methodTuple2.name, obj.getClass());
            }
            Element createElement = document.createElement(str);
            createElement.setAttribute(Constants.CLASS, invoke.getClass().getCanonicalName());
            element.appendChild(createElement);
            serializeParams(document, element, invoke);
        } catch (IllegalAccessException | InvocationTargetException e10) {
            mf.c cVar = LOG;
            Class<?> cls = obj.getClass();
            cVar.u("couldn't get " + str + " on " + cls, e10);
        }
    }

    public static void serializeParams(Document document, Element element, Object obj) {
        Matcher matcher;
        Method[] methodArr;
        Matcher matcher2 = Pattern.compile("\\Aset([A-Z].*)").matcher("");
        Matcher matcher3 = Pattern.compile("\\A(?:get|is)([A-Z].+)\\Z").matcher("");
        MethodTuples methodTuples = new MethodTuples();
        MethodTuples methodTuples2 = new MethodTuples();
        MethodTuples methodTuples3 = new MethodTuples();
        MethodTuples methodTuples4 = new MethodTuples();
        Method[] methods = obj.getClass().getMethods();
        int length = methods.length;
        int i10 = 0;
        while (i10 < length) {
            Method method = methods[i10];
            Class<?>[] parameterTypes = method.getParameterTypes();
            if (matcher2.reset(method.getName()).find()) {
                if (!Modifier.isPublic(method.getModifiers())) {
                    LOG.h("inaccessible setter: {} in {}", method.getName(), obj.getClass());
                } else if (method.getAnnotation(Field.class) != null) {
                    if (parameterTypes.length != 1) {
                        mf.c cVar = LOG;
                        String name = method.getName();
                        int length2 = parameterTypes.length;
                        StringBuilder sb2 = new StringBuilder();
                        methodArr = methods;
                        sb2.append("setter with wrong number of params ");
                        sb2.append(name);
                        sb2.append(StringUtils.SPACE);
                        sb2.append(length2);
                        cVar.x(sb2.toString());
                        matcher = matcher2;
                    } else {
                        methodArr = methods;
                        String methodToParamName = methodToParamName(matcher2.group(1));
                        matcher = matcher2;
                        if (PRIMITIVES.containsKey(parameterTypes[0])) {
                            methodTuples2.add(new MethodTuple(methodToParamName, method, parameterTypes[0]));
                        } else {
                            methodTuples.add(new MethodTuple(methodToParamName, method, parameterTypes[0]));
                        }
                    }
                }
                matcher = matcher2;
                methodArr = methods;
            } else {
                matcher = matcher2;
                methodArr = methods;
                if (matcher3.reset(method.getName()).find() && parameterTypes.length == 0) {
                    String methodToParamName2 = methodToParamName(matcher3.group(1));
                    if (PRIMITIVES.containsKey(method.getReturnType())) {
                        methodTuples4.add(new MethodTuple(methodToParamName2, method, method.getReturnType()));
                    } else {
                        methodTuples3.add(new MethodTuple(methodToParamName2, method, method.getReturnType()));
                    }
                }
            }
            i10++;
            matcher2 = matcher;
            methods = methodArr;
        }
        serializePrimitives(document, element, obj, methodTuples2, methodTuples4);
        serializeNonPrimitives(document, element, obj, methodTuples, methodTuples3);
    }

    private static void serializePrimitives(Document document, Element element, Object obj, MethodTuples methodTuples, MethodTuples methodTuples2) {
        MethodTuples methodTuples3;
        Element element2;
        String obj2;
        MethodTuples methodTuples4 = methodTuples2;
        if (obj instanceof AbstractMultipleParser) {
            element2 = document.createElement("params");
            Element createElement = document.createElement("param");
            createElement.setAttribute(io.flutter.plugins.firebase.analytics.Constants.NAME, "metadataPolicy");
            createElement.setAttribute("value", ((AbstractMultipleParser) obj).getMetadataPolicy().toString());
            element2.appendChild(createElement);
            element.appendChild(element2);
            methodTuples3 = methodTuples;
        } else {
            methodTuples3 = methodTuples;
            element2 = null;
        }
        Element element3 = element2;
        for (Map.Entry<String, Set<MethodTuple>> entry : methodTuples3.tuples.entrySet()) {
            if (!methodTuples4.tuples.containsKey(entry.getKey())) {
                LOG.z("no getter for setter: {} in {}", entry.getKey(), obj.getClass());
            } else {
                Set<MethodTuple> value = entry.getValue();
                MethodTuple methodTuple = null;
                for (MethodTuple methodTuple2 : methodTuples4.tuples.get(entry.getKey())) {
                    Iterator<MethodTuple> it = value.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        } else if (methodTuple2.singleParam.equals(it.next().singleParam)) {
                            methodTuple = methodTuple2;
                            break;
                        }
                    }
                }
                if (methodTuple == null) {
                    LOG.q("Could not find getter to match setter for: {}", entry.getKey());
                } else {
                    try {
                        Object invoke = methodTuple.method.invoke(obj, new Object[0]);
                        if (invoke == null) {
                            LOG.d("null value: {} in {}", methodTuple.name, obj.getClass());
                        }
                        if (invoke == null) {
                            obj2 = "";
                        } else {
                            obj2 = invoke.toString();
                        }
                        Element createElement2 = document.createElement("param");
                        createElement2.setAttribute(io.flutter.plugins.firebase.analytics.Constants.NAME, methodTuple.name);
                        createElement2.setAttribute("type", PRIMITIVES.get(methodTuple.singleParam));
                        if (List.class.isAssignableFrom(methodTuple.singleParam)) {
                            addList(createElement2, document, methodTuple, (List) invoke);
                        } else if (Map.class.isAssignableFrom(methodTuple.singleParam)) {
                            addMap(createElement2, document, methodTuple, (Map) invoke);
                        } else {
                            createElement2.setTextContent(obj2);
                        }
                        if (element3 == null) {
                            Element createElement3 = document.createElement("params");
                            element.appendChild(createElement3);
                            element3 = createElement3;
                        }
                        element3.appendChild(createElement2);
                    } catch (IllegalAccessException e10) {
                        mf.c cVar = LOG;
                        cVar.g("couldn't invoke " + methodTuple, e10);
                    } catch (InvocationTargetException e11) {
                        mf.c cVar2 = LOG;
                        cVar2.g("couldn't invoke " + methodTuple, e11);
                    }
                }
            }
            methodTuples4 = methodTuples2;
        }
    }

    private static Element addParser(Mode mode, Element element, Document document, Parser parser, ParserDecorator parserDecorator) {
        ParseContext parseContext = new ParseContext();
        TreeSet<MediaType> treeSet = new TreeSet();
        TreeSet<MediaType> treeSet2 = new TreeSet();
        if (parserDecorator != null) {
            TreeSet treeSet3 = new TreeSet(parserDecorator.getSupportedTypes(parseContext));
            treeSet.addAll(treeSet3);
            for (MediaType mediaType : parser.getSupportedTypes(parseContext)) {
                if (!treeSet3.contains(mediaType)) {
                    treeSet2.add(mediaType);
                }
                treeSet.remove(mediaType);
            }
        } else if (mode == Mode.STATIC_FULL) {
            treeSet.addAll(parser.getSupportedTypes(parseContext));
        }
        String canonicalName = parser.getClass().getCanonicalName();
        Element createElement = document.createElement(ExternalParsersConfigReaderMetKeys.PARSER_TAG);
        createElement.setAttribute(Constants.CLASS, canonicalName);
        element.appendChild(createElement);
        serializeParams(document, createElement, parser);
        for (MediaType mediaType2 : treeSet) {
            Element createElement2 = document.createElement("mime");
            createElement2.appendChild(document.createTextNode(mediaType2.toString()));
            createElement.appendChild(createElement2);
        }
        for (MediaType mediaType3 : treeSet2) {
            Element createElement3 = document.createElement("mime-exclude");
            createElement3.appendChild(document.createTextNode(mediaType3.toString()));
            createElement.appendChild(createElement3);
        }
        return createElement;
    }
}

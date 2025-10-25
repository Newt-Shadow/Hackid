package org.apache.tika.config;

import io.flutter.plugins.firebase.crashlytics.Constants;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicInteger;
import org.apache.tika.concurrent.ConfigurableThreadPoolExecutor;
import org.apache.tika.concurrent.SimpleThreadPoolExecutor;
import org.apache.tika.detect.CompositeDetector;
import org.apache.tika.detect.CompositeEncodingDetector;
import org.apache.tika.detect.DefaultDetector;
import org.apache.tika.detect.DefaultEncodingDetector;
import org.apache.tika.detect.Detector;
import org.apache.tika.detect.EncodingDetector;
import org.apache.tika.exception.TikaConfigException;
import org.apache.tika.exception.TikaException;
import org.apache.tika.language.translate.DefaultTranslator;
import org.apache.tika.language.translate.Translator;
import org.apache.tika.metadata.filter.MetadataFilter;
import org.apache.tika.metadata.filter.NoOpFilter;
import org.apache.tika.metadata.listfilter.MetadataListFilter;
import org.apache.tika.metadata.listfilter.NoOpListFilter;
import org.apache.tika.mime.MediaType;
import org.apache.tika.mime.MediaTypeRegistry;
import org.apache.tika.mime.MimeTypes;
import org.apache.tika.mime.MimeTypesFactory;
import org.apache.tika.parser.AbstractEncodingDetectorParser;
import org.apache.tika.parser.AutoDetectParser;
import org.apache.tika.parser.AutoDetectParserConfig;
import org.apache.tika.parser.CompositeParser;
import org.apache.tika.parser.DefaultParser;
import org.apache.tika.parser.Parser;
import org.apache.tika.parser.ParserDecorator;
import org.apache.tika.parser.RenderingParser;
import org.apache.tika.parser.external.ExternalParsersConfigReaderMetKeys;
import org.apache.tika.parser.multiple.AbstractMultipleParser;
import org.apache.tika.renderer.CompositeRenderer;
import org.apache.tika.renderer.Renderer;
import org.apache.tika.utils.AnnotationUtils;
import org.apache.tika.utils.StringUtils;
import org.apache.tika.utils.XMLReaderUtils;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;
/* loaded from: classes2.dex */
public class TikaConfig {
    public static int DEFAULT_MAX_JSON_STRING_FIELD_LENGTH = 20000000;
    private static int MAX_JSON_STRING_FIELD_LENGTH = 0;
    public static String MAX_JSON_STRING_FIELD_LENGTH_ELEMENT_NAME = "maxJsonStringFieldLength";
    private static final Map<String, InitializableProblemHandler> strategyMap;
    private final AutoDetectParserConfig autoDetectParserConfig;
    private final CompositeDetector detector;
    private final EncodingDetector encodingDetector;
    private final ExecutorService executorService;
    private final MetadataFilter metadataFilter;
    private final MetadataListFilter metadataListFilter;
    private final MimeTypes mimeTypes;
    private final CompositeParser parser;
    private final Renderer renderer;
    private final ServiceLoader serviceLoader;
    private final Translator translator;
    protected static final AtomicInteger TIMES_INSTANTIATED = new AtomicInteger();
    private static final mf.c LOG = mf.e.l(TikaConfig.class);

    /* loaded from: classes2.dex */
    private static class DetectorXmlLoader extends XmlLoader<CompositeDetector, Detector> {
        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        /* bridge */ /* synthetic */ Detector createComposite(Class<? extends Detector> cls, List<Detector> list, Set<Class<? extends Detector>> set, Map map, MimeTypes mimeTypes, ServiceLoader serviceLoader) {
            return createComposite2(cls, list, set, (Map<String, Param>) map, mimeTypes, serviceLoader);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        public Detector decorate(Detector detector, Element element) {
            return detector;
        }

        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        Class<? extends Detector> getLoaderClass() {
            return Detector.class;
        }

        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        String getLoaderTagName() {
            return "detector";
        }

        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        String getParentTagName() {
            return "detectors";
        }

        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        boolean supportsComposite() {
            return true;
        }

        private DetectorXmlLoader() {
            super();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        public CompositeDetector createDefault(MimeTypes mimeTypes, ServiceLoader serviceLoader) {
            return TikaConfig.getDefaultDetector(mimeTypes, serviceLoader);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        public boolean isComposite(Detector detector) {
            return detector instanceof CompositeDetector;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        public Detector preLoadOne(Class<? extends Detector> cls, String str, MimeTypes mimeTypes) {
            if (MimeTypes.class.equals(cls)) {
                return mimeTypes;
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        public CompositeDetector createComposite(List<Detector> list, MimeTypes mimeTypes, ServiceLoader serviceLoader) {
            return new CompositeDetector(mimeTypes.getMediaTypeRegistry(), list);
        }

        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        boolean isComposite(Class<? extends Detector> cls) {
            return CompositeDetector.class.isAssignableFrom(cls);
        }

        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        /* renamed from: createComposite  reason: avoid collision after fix types in other method */
        Detector createComposite2(Class<? extends Detector> cls, List<Detector> list, Set<Class<? extends Detector>> set, Map<String, Param> map, MimeTypes mimeTypes, ServiceLoader serviceLoader) {
            Detector detector;
            MediaTypeRegistry mediaTypeRegistry = mimeTypes.getMediaTypeRegistry();
            try {
                detector = cls.getConstructor(MimeTypes.class, ServiceLoader.class, Collection.class).newInstance(mimeTypes, serviceLoader, set);
            } catch (NoSuchMethodException unused) {
                detector = null;
            }
            if (detector == null) {
                try {
                    detector = cls.getConstructor(MediaTypeRegistry.class, List.class, Collection.class).newInstance(mediaTypeRegistry, list, set);
                } catch (NoSuchMethodException unused2) {
                }
            }
            if (detector == null) {
                try {
                    detector = cls.getConstructor(MediaTypeRegistry.class, List.class).newInstance(mediaTypeRegistry, list);
                } catch (NoSuchMethodException unused3) {
                }
            }
            if (detector == null) {
                try {
                    return cls.getConstructor(List.class).newInstance(list);
                } catch (NoSuchMethodException unused4) {
                    return detector;
                }
            }
            return detector;
        }
    }

    /* loaded from: classes2.dex */
    private static class EncodingDetectorXmlLoader extends XmlLoader<EncodingDetector, EncodingDetector> {
        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        /* bridge */ /* synthetic */ EncodingDetector createComposite(Class<? extends EncodingDetector> cls, List<EncodingDetector> list, Set<Class<? extends EncodingDetector>> set, Map map, MimeTypes mimeTypes, ServiceLoader serviceLoader) {
            return createComposite2(cls, list, set, (Map<String, Param>) map, mimeTypes, serviceLoader);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        public EncodingDetector decorate(EncodingDetector encodingDetector, Element element) {
            return encodingDetector;
        }

        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        Class<? extends EncodingDetector> getLoaderClass() {
            return EncodingDetector.class;
        }

        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        String getLoaderTagName() {
            return "encodingDetector";
        }

        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        String getParentTagName() {
            return "encodingDetectors";
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        public EncodingDetector preLoadOne(Class<? extends EncodingDetector> cls, String str, MimeTypes mimeTypes) {
            return null;
        }

        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        boolean supportsComposite() {
            return true;
        }

        private EncodingDetectorXmlLoader() {
            super();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        public EncodingDetector createDefault(MimeTypes mimeTypes, ServiceLoader serviceLoader) {
            return TikaConfig.getDefaultEncodingDetector(serviceLoader);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        public boolean isComposite(EncodingDetector encodingDetector) {
            return encodingDetector instanceof CompositeEncodingDetector;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        public EncodingDetector createComposite(List<EncodingDetector> list, MimeTypes mimeTypes, ServiceLoader serviceLoader) {
            return new CompositeEncodingDetector(list);
        }

        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        boolean isComposite(Class<? extends EncodingDetector> cls) {
            return CompositeEncodingDetector.class.isAssignableFrom(cls);
        }

        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        /* renamed from: createComposite  reason: avoid collision after fix types in other method */
        EncodingDetector createComposite2(Class<? extends EncodingDetector> cls, List<EncodingDetector> list, Set<Class<? extends EncodingDetector>> set, Map<String, Param> map, MimeTypes mimeTypes, ServiceLoader serviceLoader) {
            EncodingDetector encodingDetector;
            try {
                encodingDetector = cls.getConstructor(ServiceLoader.class, Collection.class).newInstance(serviceLoader, set);
            } catch (NoSuchMethodException unused) {
                TikaConfig.LOG.q("couldn't find constructor for service loader + collection for {}", cls);
                encodingDetector = null;
            }
            if (encodingDetector == null) {
                try {
                    return cls.getConstructor(List.class).newInstance(list);
                } catch (NoSuchMethodException unused2) {
                    TikaConfig.LOG.q("couldn't find constructor for EncodingDetector(List) for {}", cls);
                    return encodingDetector;
                }
            }
            return encodingDetector;
        }
    }

    /* loaded from: classes2.dex */
    private static class ExecutorServiceXmlLoader extends XmlLoader<ConfigurableThreadPoolExecutor, ConfigurableThreadPoolExecutor> {
        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        /* bridge */ /* synthetic */ ConfigurableThreadPoolExecutor createComposite(Class<? extends ConfigurableThreadPoolExecutor> cls, List<ConfigurableThreadPoolExecutor> list, Set<Class<? extends ConfigurableThreadPoolExecutor>> set, Map map, MimeTypes mimeTypes, ServiceLoader serviceLoader) {
            return createComposite2(cls, list, set, (Map<String, Param>) map, mimeTypes, serviceLoader);
        }

        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        Class<? extends ConfigurableThreadPoolExecutor> getLoaderClass() {
            return ConfigurableThreadPoolExecutor.class;
        }

        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        String getLoaderTagName() {
            return "executor-service";
        }

        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        String getParentTagName() {
            return null;
        }

        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        boolean isComposite(Class<? extends ConfigurableThreadPoolExecutor> cls) {
            return false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        public ConfigurableThreadPoolExecutor preLoadOne(Class<? extends ConfigurableThreadPoolExecutor> cls, String str, MimeTypes mimeTypes) {
            return null;
        }

        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        boolean supportsComposite() {
            return false;
        }

        private ExecutorServiceXmlLoader() {
            super();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        public ConfigurableThreadPoolExecutor createDefault(MimeTypes mimeTypes, ServiceLoader serviceLoader) {
            return TikaConfig.c();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        public ConfigurableThreadPoolExecutor decorate(ConfigurableThreadPoolExecutor configurableThreadPoolExecutor, Element element) {
            Element child = TikaConfig.getChild(element, "max-threads");
            if (child != null) {
                configurableThreadPoolExecutor.setMaximumPoolSize(Integer.parseInt(TikaConfig.getText(child)));
            }
            Element child2 = TikaConfig.getChild(element, "core-threads");
            if (child2 != null) {
                configurableThreadPoolExecutor.setCorePoolSize(Integer.parseInt(TikaConfig.getText(child2)));
            }
            return configurableThreadPoolExecutor;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        public boolean isComposite(ConfigurableThreadPoolExecutor configurableThreadPoolExecutor) {
            return false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        public ConfigurableThreadPoolExecutor loadOne(Element element, MimeTypes mimeTypes, ServiceLoader serviceLoader) {
            return (ConfigurableThreadPoolExecutor) super.loadOne(element, mimeTypes, serviceLoader);
        }

        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        /* renamed from: createComposite  reason: avoid collision after fix types in other method */
        ConfigurableThreadPoolExecutor createComposite2(Class<? extends ConfigurableThreadPoolExecutor> cls, List<ConfigurableThreadPoolExecutor> list, Set<Class<? extends ConfigurableThreadPoolExecutor>> set, Map<String, Param> map, MimeTypes mimeTypes, ServiceLoader serviceLoader) {
            throw new InstantiationException("Only one executor service supported");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        public ConfigurableThreadPoolExecutor createComposite(List<ConfigurableThreadPoolExecutor> list, MimeTypes mimeTypes, ServiceLoader serviceLoader) {
            return list.get(0);
        }
    }

    /* loaded from: classes2.dex */
    private static class ParserXmlLoader extends XmlLoader<CompositeParser, Parser> {
        private final EncodingDetector encodingDetector;
        private final Renderer renderer;

        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        /* bridge */ /* synthetic */ Parser createComposite(Class<? extends Parser> cls, List<Parser> list, Set<Class<? extends Parser>> set, Map map, MimeTypes mimeTypes, ServiceLoader serviceLoader) {
            return createComposite2(cls, list, set, (Map<String, Param>) map, mimeTypes, serviceLoader);
        }

        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        Class<? extends Parser> getLoaderClass() {
            return Parser.class;
        }

        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        String getLoaderTagName() {
            return ExternalParsersConfigReaderMetKeys.PARSER_TAG;
        }

        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        String getParentTagName() {
            return "parsers";
        }

        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        boolean supportsComposite() {
            return true;
        }

        private ParserXmlLoader(EncodingDetector encodingDetector, Renderer renderer) {
            super();
            this.encodingDetector = encodingDetector;
            this.renderer = renderer;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        public CompositeParser createDefault(MimeTypes mimeTypes, ServiceLoader serviceLoader) {
            return TikaConfig.getDefaultParser(mimeTypes, serviceLoader, this.encodingDetector, this.renderer);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        public Parser decorate(Parser parser, Element element) {
            Set mediaTypesListFromDomElement = TikaConfig.mediaTypesListFromDomElement(element, "mime");
            if (!mediaTypesListFromDomElement.isEmpty()) {
                parser = ParserDecorator.withTypes(parser, mediaTypesListFromDomElement);
            }
            Set mediaTypesListFromDomElement2 = TikaConfig.mediaTypesListFromDomElement(element, "mime-exclude");
            return !mediaTypesListFromDomElement2.isEmpty() ? ParserDecorator.withoutTypes(parser, mediaTypesListFromDomElement2) : parser;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        public boolean isComposite(Parser parser) {
            return parser instanceof CompositeParser;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        public Parser newInstance(Class<? extends Parser> cls) {
            Parser newInstance;
            if (AbstractEncodingDetectorParser.class.isAssignableFrom(cls)) {
                newInstance = cls.getConstructor(EncodingDetector.class).newInstance(this.encodingDetector);
            } else {
                newInstance = cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            }
            if (newInstance instanceof RenderingParser) {
                ((RenderingParser) newInstance).setRenderer(this.renderer);
            }
            return newInstance;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        public Parser preLoadOne(Class<? extends Parser> cls, String str, MimeTypes mimeTypes) {
            if (AutoDetectParser.class.isAssignableFrom(cls)) {
                throw new TikaException("AutoDetectParser not supported in a <parser> configuration element: " + str);
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        public CompositeParser createComposite(List<Parser> list, MimeTypes mimeTypes, ServiceLoader serviceLoader) {
            return new CompositeParser(mimeTypes.getMediaTypeRegistry(), list);
        }

        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        boolean isComposite(Class<? extends Parser> cls) {
            return CompositeParser.class.isAssignableFrom(cls) || AbstractMultipleParser.class.isAssignableFrom(cls) || ParserDecorator.class.isAssignableFrom(cls);
        }

        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        /* renamed from: createComposite  reason: avoid collision after fix types in other method */
        Parser createComposite2(Class<? extends Parser> cls, List<Parser> list, Set<Class<? extends Parser>> set, Map<String, Param> map, MimeTypes mimeTypes, ServiceLoader serviceLoader) {
            Parser parser;
            CompositeParser compositeParser;
            MediaTypeRegistry mediaTypeRegistry = mimeTypes.getMediaTypeRegistry();
            try {
                parser = cls.getConstructor(MediaTypeRegistry.class, ServiceLoader.class, Collection.class, EncodingDetector.class, Renderer.class).newInstance(mediaTypeRegistry, serviceLoader, set, this.encodingDetector, this.renderer);
            } catch (NoSuchMethodException unused) {
                parser = null;
            }
            if (parser == null) {
                try {
                    parser = cls.getConstructor(MediaTypeRegistry.class, ServiceLoader.class, Collection.class, EncodingDetector.class).newInstance(mediaTypeRegistry, serviceLoader, set, this.encodingDetector);
                } catch (NoSuchMethodException unused2) {
                }
            }
            if (parser == null) {
                try {
                    parser = cls.getConstructor(MediaTypeRegistry.class, ServiceLoader.class, Collection.class).newInstance(mediaTypeRegistry, serviceLoader, set);
                } catch (NoSuchMethodException unused3) {
                }
            }
            if (parser == null) {
                try {
                    parser = cls.getConstructor(MediaTypeRegistry.class, List.class, Collection.class).newInstance(mediaTypeRegistry, list, set);
                } catch (NoSuchMethodException unused4) {
                }
            }
            if (parser == null) {
                try {
                    parser = cls.getConstructor(MediaTypeRegistry.class, Collection.class, Map.class).newInstance(mediaTypeRegistry, list, map);
                } catch (NoSuchMethodException unused5) {
                }
            }
            if (parser == null) {
                try {
                    parser = cls.getConstructor(MediaTypeRegistry.class, List.class).newInstance(mediaTypeRegistry, list);
                } catch (NoSuchMethodException unused6) {
                }
            }
            if (parser == null && ParserDecorator.class.isAssignableFrom(cls)) {
                try {
                    if (list.size() == 1 && set.isEmpty() && (list.get(0) instanceof CompositeParser)) {
                        compositeParser = (CompositeParser) list.get(0);
                    } else {
                        compositeParser = new CompositeParser(mediaTypeRegistry, list, set);
                    }
                    return cls.getConstructor(Parser.class).newInstance(compositeParser);
                } catch (NoSuchMethodException unused7) {
                    return parser;
                }
            }
            return parser;
        }
    }

    /* loaded from: classes2.dex */
    private static class RendererXmlLoader extends XmlLoader<Renderer, Renderer> {
        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        /* bridge */ /* synthetic */ Renderer createComposite(Class<? extends Renderer> cls, List<Renderer> list, Set<Class<? extends Renderer>> set, Map map, MimeTypes mimeTypes, ServiceLoader serviceLoader) {
            return createComposite2(cls, list, set, (Map<String, Param>) map, mimeTypes, serviceLoader);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        public Renderer decorate(Renderer renderer, Element element) {
            return renderer;
        }

        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        Class<? extends Renderer> getLoaderClass() {
            return Renderer.class;
        }

        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        String getLoaderTagName() {
            return "renderer";
        }

        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        String getParentTagName() {
            return "renderers";
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        public Renderer preLoadOne(Class<? extends Renderer> cls, String str, MimeTypes mimeTypes) {
            return null;
        }

        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        boolean supportsComposite() {
            return true;
        }

        private RendererXmlLoader() {
            super();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        public Renderer createDefault(MimeTypes mimeTypes, ServiceLoader serviceLoader) {
            return TikaConfig.getDefaultRenderer(serviceLoader);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        public boolean isComposite(Renderer renderer) {
            return renderer instanceof CompositeRenderer;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        public Renderer createComposite(List<Renderer> list, MimeTypes mimeTypes, ServiceLoader serviceLoader) {
            return new CompositeRenderer(list);
        }

        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        boolean isComposite(Class<? extends Renderer> cls) {
            return CompositeRenderer.class.isAssignableFrom(cls);
        }

        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        /* renamed from: createComposite  reason: avoid collision after fix types in other method */
        Renderer createComposite2(Class<? extends Renderer> cls, List<Renderer> list, Set<Class<? extends Renderer>> set, Map<String, Param> map, MimeTypes mimeTypes, ServiceLoader serviceLoader) {
            Renderer renderer;
            try {
                renderer = cls.getConstructor(ServiceLoader.class, Collection.class).newInstance(serviceLoader, set);
            } catch (NoSuchMethodException unused) {
                TikaConfig.LOG.q("couldn't find constructor for service loader + collection for {}", null);
                renderer = null;
            }
            if (renderer == null) {
                try {
                    return cls.getConstructor(List.class).newInstance(list);
                } catch (NoSuchMethodException unused2) {
                    TikaConfig.LOG.q("couldn't find constructor for Renderer(List) for {}", cls);
                    return renderer;
                }
            }
            return renderer;
        }
    }

    /* loaded from: classes2.dex */
    private static class TranslatorXmlLoader extends XmlLoader<Translator, Translator> {
        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        /* bridge */ /* synthetic */ Translator createComposite(Class<? extends Translator> cls, List<Translator> list, Set<Class<? extends Translator>> set, Map map, MimeTypes mimeTypes, ServiceLoader serviceLoader) {
            return createComposite2(cls, list, set, (Map<String, Param>) map, mimeTypes, serviceLoader);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        public Translator decorate(Translator translator, Element element) {
            return translator;
        }

        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        Class<? extends Translator> getLoaderClass() {
            return Translator.class;
        }

        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        String getLoaderTagName() {
            return "translator";
        }

        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        String getParentTagName() {
            return null;
        }

        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        boolean isComposite(Class<? extends Translator> cls) {
            return false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        public Translator preLoadOne(Class<? extends Translator> cls, String str, MimeTypes mimeTypes) {
            return null;
        }

        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        boolean supportsComposite() {
            return false;
        }

        private TranslatorXmlLoader() {
            super();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        public Translator createDefault(MimeTypes mimeTypes, ServiceLoader serviceLoader) {
            return TikaConfig.getDefaultTranslator(serviceLoader);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        public boolean isComposite(Translator translator) {
            return false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        public Translator createComposite(List<Translator> list, MimeTypes mimeTypes, ServiceLoader serviceLoader) {
            return list.get(0);
        }

        @Override // org.apache.tika.config.TikaConfig.XmlLoader
        /* renamed from: createComposite  reason: avoid collision after fix types in other method */
        Translator createComposite2(Class<? extends Translator> cls, List<Translator> list, Set<Class<? extends Translator>> set, Map<String, Param> map, MimeTypes mimeTypes, ServiceLoader serviceLoader) {
            throw new InstantiationException("Only one translator supported");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static abstract class XmlLoader<CT, T> {
        protected static final String PARAMS_TAG_NAME = "params";

        private XmlLoader() {
        }

        abstract T createComposite(Class<? extends T> cls, List<T> list, Set<Class<? extends T>> set, Map<String, Param> map, MimeTypes mimeTypes, ServiceLoader serviceLoader);

        abstract CT createComposite(List<T> list, MimeTypes mimeTypes, ServiceLoader serviceLoader);

        abstract CT createDefault(MimeTypes mimeTypes, ServiceLoader serviceLoader);

        abstract T decorate(T t10, Element element);

        abstract Class<? extends T> getLoaderClass();

        abstract String getLoaderTagName();

        Map<String, Param> getParams(Element element) {
            HashMap hashMap = new HashMap();
            Node firstChild = element.getFirstChild();
            while (true) {
                if (firstChild == null) {
                    break;
                } else if (PARAMS_TAG_NAME.equals(firstChild.getNodeName())) {
                    if (firstChild.hasChildNodes()) {
                        NodeList childNodes = firstChild.getChildNodes();
                        for (int i10 = 0; i10 < childNodes.getLength(); i10++) {
                            Node item = childNodes.item(i10);
                            if (item.getNodeType() == 1) {
                                Param load = Param.load(item);
                                hashMap.put(load.getName(), load);
                            }
                        }
                    }
                } else {
                    firstChild = firstChild.getNextSibling();
                }
            }
            return hashMap;
        }

        abstract String getParentTagName();

        abstract boolean isComposite(Class<? extends T> cls);

        abstract boolean isComposite(T t10);

        T loadOne(Element element, MimeTypes mimeTypes, ServiceLoader serviceLoader) {
            InitializableProblemHandler initializableProblemHandler;
            T newInstance;
            String attribute = element.getAttribute(Constants.CLASS);
            if (!j.a(attribute)) {
                String attribute2 = element.getAttribute("initializableProblemHandler");
                if (!j.a(attribute2)) {
                    initializableProblemHandler = TikaConfig.getInitializableProblemHandler(attribute2);
                } else {
                    initializableProblemHandler = serviceLoader.getInitializableProblemHandler();
                }
                InitializableProblemHandler initializableProblemHandler2 = initializableProblemHandler;
                try {
                    try {
                        Class<? extends T> serviceClass = serviceLoader.getServiceClass(getLoaderClass(), attribute);
                        T preLoadOne = preLoadOne(serviceClass, attribute, mimeTypes);
                        if (preLoadOne != null) {
                            return preLoadOne;
                        }
                        try {
                            Map<String, Param> params = getParams(element);
                            if (isComposite((Class) serviceClass)) {
                                List<T> arrayList = new ArrayList<>();
                                NodeList elementsByTagName = element.getElementsByTagName(getLoaderTagName());
                                if (elementsByTagName.getLength() > 0) {
                                    for (int i10 = 0; i10 < elementsByTagName.getLength(); i10++) {
                                        T loadOne = loadOne((Element) elementsByTagName.item(i10), mimeTypes, serviceLoader);
                                        if (loadOne != null) {
                                            arrayList.add(loadOne);
                                        }
                                    }
                                }
                                Set<Class<? extends T>> hashSet = new HashSet<>();
                                NodeList elementsByTagName2 = element.getElementsByTagName(getLoaderTagName() + "-exclude");
                                if (elementsByTagName2.getLength() > 0) {
                                    for (int i11 = 0; i11 < elementsByTagName2.getLength(); i11++) {
                                        String attribute3 = ((Element) elementsByTagName2.item(i11)).getAttribute(Constants.CLASS);
                                        try {
                                            hashSet.add(serviceLoader.getServiceClass(getLoaderClass(), attribute3));
                                        } catch (ClassNotFoundException unused) {
                                            throw new TikaConfigException("Class not found in -exclude list: " + attribute3);
                                        }
                                    }
                                }
                                newInstance = createComposite(serviceClass, arrayList, hashSet, params, mimeTypes, serviceLoader);
                                if (newInstance == null) {
                                    newInstance = newInstance(serviceClass);
                                }
                            } else {
                                newInstance = newInstance(serviceClass);
                            }
                            AnnotationUtils.assignFieldParams(newInstance, params);
                            if (newInstance instanceof Initializable) {
                                ((Initializable) newInstance).initialize(params);
                                ((Initializable) newInstance).checkInitialization(initializableProblemHandler2);
                            }
                            return decorate(newInstance, element);
                        } catch (Exception e10) {
                            throw new TikaConfigException(e10.getMessage(), e10);
                        }
                    } catch (ClassNotFoundException e11) {
                        if (serviceLoader.getLoadErrorHandler() != LoadErrorHandler.THROW) {
                            serviceLoader.getLoadErrorHandler().handleLoadError(attribute, e11);
                            return null;
                        }
                        throw new TikaConfigException("Unable to find a " + getLoaderTagName() + " class: " + attribute, e11);
                    }
                } catch (IllegalAccessException e12) {
                    throw new TikaException("Unable to access a " + getLoaderTagName() + " class: " + attribute, e12);
                } catch (InstantiationException e13) {
                    throw new TikaException("Unable to instantiate a " + getLoaderTagName() + " class: " + attribute, e13);
                } catch (NoSuchMethodException e14) {
                    throw new TikaException("Unable to find the right constructor for " + getLoaderTagName() + " class: " + attribute, e14);
                } catch (InvocationTargetException e15) {
                    throw new TikaException("Unable to create a " + getLoaderTagName() + " class: " + attribute, e15);
                }
            }
            throw new TikaConfigException("class attribute must not be empty: " + element);
        }

        CT loadOverall(Element element, MimeTypes mimeTypes, ServiceLoader serviceLoader) {
            List<T> arrayList = new ArrayList<>();
            for (Element element2 : TikaConfig.getTopLevelElementChildren(element, getParentTagName(), getLoaderTagName())) {
                T loadOne = loadOne(element2, mimeTypes, serviceLoader);
                if (loadOne != null) {
                    arrayList.add(loadOne);
                }
            }
            if (arrayList.isEmpty()) {
                return createDefault(mimeTypes, serviceLoader);
            }
            if (arrayList.size() == 1) {
                CT ct = (CT) arrayList.get(0);
                if (isComposite((XmlLoader<CT, T>) ct)) {
                    return ct;
                }
            } else if (!supportsComposite()) {
                String parentTagName = getParentTagName();
                throw new TikaConfigException("Composite not supported for " + parentTagName + ". Must specify only one child!");
            }
            return createComposite(arrayList, mimeTypes, serviceLoader);
        }

        T newInstance(Class<? extends T> cls) {
            return cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        }

        abstract T preLoadOne(Class<? extends T> cls, String str, MimeTypes mimeTypes);

        abstract boolean supportsComposite();
    }

    static {
        HashMap hashMap = new HashMap();
        strategyMap = hashMap;
        hashMap.put("", InitializableProblemHandler.DEFAULT);
        InitializableProblemHandler initializableProblemHandler = InitializableProblemHandler.IGNORE;
        hashMap.put(initializableProblemHandler.toString(), initializableProblemHandler);
        InitializableProblemHandler initializableProblemHandler2 = InitializableProblemHandler.INFO;
        hashMap.put(initializableProblemHandler2.toString(), initializableProblemHandler2);
        InitializableProblemHandler initializableProblemHandler3 = InitializableProblemHandler.WARN;
        hashMap.put(initializableProblemHandler3.toString(), initializableProblemHandler3);
        InitializableProblemHandler initializableProblemHandler4 = InitializableProblemHandler.THROW;
        hashMap.put(initializableProblemHandler4.toString(), initializableProblemHandler4);
        MAX_JSON_STRING_FIELD_LENGTH = DEFAULT_MAX_JSON_STRING_FIELD_LENGTH;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public TikaConfig(java.lang.String r2) {
        /*
            r1 = this;
            r0 = 0
            java.lang.String[] r0 = new java.lang.String[r0]
            java.nio.file.Path r2 = af.r0.a(r2, r0)
            r1.<init>(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.tika.config.TikaConfig.<init>(java.lang.String):void");
    }

    static /* bridge */ /* synthetic */ ConfigurableThreadPoolExecutor c() {
        return getDefaultExecutorService();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Element getChild(Element element, String str) {
        for (Node firstChild = element.getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
            if (firstChild.getNodeType() == 1 && str.equals(firstChild.getNodeName())) {
                return (Element) firstChild;
            }
        }
        return null;
    }

    private static InputStream getConfigInputStream(String str, ServiceLoader serviceLoader) {
        InputStream inputStream;
        Path path;
        boolean isRegularFile;
        try {
            inputStream = new URI(str).toURL().openStream();
        } catch (IOException | URISyntaxException unused) {
            inputStream = null;
        }
        if (inputStream == null) {
            inputStream = serviceLoader.getResourceAsStream(str);
        }
        if (inputStream == null) {
            path = Paths.get(str, new String[0]);
            isRegularFile = Files.isRegularFile(path, new LinkOption[0]);
            if (isRegularFile) {
                inputStream = Files.newInputStream(path, new OpenOption[0]);
            }
        }
        if (inputStream != null) {
            return inputStream;
        }
        throw new TikaException("Specified Tika configuration not found: " + str);
    }

    public static TikaConfig getDefaultConfig() {
        try {
            return new TikaConfig();
        } catch (IOException e10) {
            throw new RuntimeException("Unable to read default configuration", e10);
        } catch (TikaException e11) {
            throw new RuntimeException("Unable to access default configuration", e11);
        }
    }

    protected static CompositeDetector getDefaultDetector(MimeTypes mimeTypes, ServiceLoader serviceLoader) {
        return new DefaultDetector(mimeTypes, serviceLoader);
    }

    protected static CompositeEncodingDetector getDefaultEncodingDetector(ServiceLoader serviceLoader) {
        return new DefaultEncodingDetector(serviceLoader);
    }

    private static ConfigurableThreadPoolExecutor getDefaultExecutorService() {
        return new SimpleThreadPoolExecutor();
    }

    private static MimeTypes getDefaultMimeTypes(ClassLoader classLoader) {
        return MimeTypes.getDefaultMimeTypes(classLoader);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static CompositeParser getDefaultParser(MimeTypes mimeTypes, ServiceLoader serviceLoader, EncodingDetector encodingDetector, Renderer renderer) {
        return new DefaultParser(mimeTypes.getMediaTypeRegistry(), serviceLoader, encodingDetector, renderer);
    }

    protected static CompositeRenderer getDefaultRenderer(ServiceLoader serviceLoader) {
        return new CompositeRenderer(serviceLoader);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Translator getDefaultTranslator(ServiceLoader serviceLoader) {
        return new DefaultTranslator(serviceLoader);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static InitializableProblemHandler getInitializableProblemHandler(String str) {
        Map<String, InitializableProblemHandler> map = strategyMap;
        Locale locale = Locale.US;
        InitializableProblemHandler initializableProblemHandler = map.get(str.toUpperCase(locale));
        if (initializableProblemHandler != null) {
            return initializableProblemHandler;
        }
        throw new TikaConfigException(String.format(locale, "Couldn't parse non-null '%s'. Must be one of 'ignore', 'info', 'warn' or 'throw'", str));
    }

    public static int getMaxJsonStringFieldLength() {
        return MAX_JSON_STRING_FIELD_LENGTH;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getText(Node node) {
        short nodeType = node.getNodeType();
        if (nodeType != 1) {
            if (nodeType != 3) {
                return "";
            }
            return node.getNodeValue();
        }
        StringBuilder sb2 = new StringBuilder();
        NodeList childNodes = node.getChildNodes();
        for (int i10 = 0; i10 < childNodes.getLength(); i10++) {
            sb2.append(getText(childNodes.item(i10)));
        }
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static List<Element> getTopLevelElementChildren(Element element, String str, String str2) {
        Node node = element;
        if (str != null) {
            NodeList elementsByTagName = element.getElementsByTagName(str);
            if (elementsByTagName.getLength() <= 1) {
                if (elementsByTagName.getLength() == 1) {
                    node = elementsByTagName.item(0);
                } else {
                    node = null;
                }
            } else {
                throw new TikaException("Properties may not contain multiple " + str + " entries");
            }
        }
        if (node != null) {
            NodeList childNodes = node.getChildNodes();
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < childNodes.getLength(); i10++) {
                Node item = childNodes.item(i10);
                if (item instanceof Element) {
                    Element element2 = (Element) item;
                    if (str2.equals(element2.getTagName())) {
                        arrayList.add(element2);
                    }
                }
            }
            return arrayList;
        }
        return Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Set<MediaType> mediaTypesListFromDomElement(Element element, String str) {
        NodeList childNodes = element.getChildNodes();
        HashSet hashSet = null;
        for (int i10 = 0; i10 < childNodes.getLength(); i10++) {
            Node item = childNodes.item(i10);
            if (item instanceof Element) {
                Element element2 = (Element) item;
                if (str.equals(element2.getTagName())) {
                    String text = getText(element2);
                    MediaType parse = MediaType.parse(text);
                    if (parse != null) {
                        if (hashSet == null) {
                            hashSet = new HashSet();
                        }
                        hashSet.add(parse);
                    } else {
                        throw new TikaException("Invalid media type name: " + text);
                    }
                } else {
                    continue;
                }
            }
        }
        if (hashSet != null) {
            return hashSet;
        }
        return Collections.emptySet();
    }

    public static void mustNotBeEmpty(String str, String str2) {
        if (StringUtils.isBlank(str2)) {
            throw new IllegalArgumentException("parameter '" + str + "' must be set in the config file");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x003d, code lost:
        if (r3.toString().equalsIgnoreCase(r2) != false) goto L5;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static org.apache.tika.config.ServiceLoader serviceLoaderFromDomElement(org.w3c.dom.Element r5, java.lang.ClassLoader r6) {
        /*
            java.lang.String r0 = "service-loader"
            org.w3c.dom.Element r5 = getChild(r5, r0)
            if (r5 == 0) goto L56
            java.lang.String r0 = "dynamic"
            java.lang.String r0 = r5.getAttribute(r0)
            boolean r0 = java.lang.Boolean.parseBoolean(r0)
            org.apache.tika.config.LoadErrorHandler r1 = org.apache.tika.config.LoadErrorHandler.THROW
            java.lang.String r2 = "loadErrorHandler"
            java.lang.String r2 = r5.getAttribute(r2)
            org.apache.tika.config.LoadErrorHandler r3 = org.apache.tika.config.LoadErrorHandler.WARN
            java.lang.String r4 = r3.toString()
            boolean r4 = r4.equalsIgnoreCase(r2)
            if (r4 == 0) goto L28
        L26:
            r1 = r3
            goto L40
        L28:
            java.lang.String r3 = r1.toString()
            boolean r3 = r3.equalsIgnoreCase(r2)
            if (r3 == 0) goto L33
            goto L40
        L33:
            org.apache.tika.config.LoadErrorHandler r3 = org.apache.tika.config.LoadErrorHandler.IGNORE
            java.lang.String r4 = r3.toString()
            boolean r2 = r4.equalsIgnoreCase(r2)
            if (r2 == 0) goto L40
            goto L26
        L40:
            java.lang.String r2 = "initializableProblemHandler"
            java.lang.String r5 = r5.getAttribute(r2)
            org.apache.tika.config.InitializableProblemHandler r5 = getInitializableProblemHandler(r5)
            if (r6 != 0) goto L50
            java.lang.ClassLoader r6 = org.apache.tika.config.ServiceLoader.getContextClassLoader()
        L50:
            org.apache.tika.config.ServiceLoader r2 = new org.apache.tika.config.ServiceLoader
            r2.<init>(r6, r1, r5, r0)
            goto L63
        L56:
            if (r6 == 0) goto L5e
            org.apache.tika.config.ServiceLoader r2 = new org.apache.tika.config.ServiceLoader
            r2.<init>(r6)
            goto L63
        L5e:
            org.apache.tika.config.ServiceLoader r2 = new org.apache.tika.config.ServiceLoader
            r2.<init>()
        L63:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.tika.config.TikaConfig.serviceLoaderFromDomElement(org.w3c.dom.Element, java.lang.ClassLoader):org.apache.tika.config.ServiceLoader");
    }

    private void setMaxJsonStringFieldLength(Element element) {
        NodeList childNodes = element.getChildNodes();
        for (int i10 = 0; i10 < childNodes.getLength(); i10++) {
            Node item = childNodes.item(i10);
            if (item.getNodeName().equals(MAX_JSON_STRING_FIELD_LENGTH_ELEMENT_NAME)) {
                try {
                    MAX_JSON_STRING_FIELD_LENGTH = Integer.parseInt(item.getTextContent());
                    return;
                } catch (NumberFormatException e10) {
                    String str = MAX_JSON_STRING_FIELD_LENGTH_ELEMENT_NAME;
                    throw new TikaConfigException(str + " is not an integer", e10);
                }
            }
        }
    }

    private static MimeTypes typesFromDomElement(Element element) {
        Element child = getChild(element, "mimeTypeRepository");
        if (child != null && child.hasAttribute("resource")) {
            return MimeTypesFactory.create(child.getAttribute("resource"));
        }
        return getDefaultMimeTypes(null);
    }

    private void updateXMLReaderUtils(Element element) {
        Element child = getChild(element, "xml-reader-utils");
        if (child == null) {
            return;
        }
        if (child.hasAttribute("maxEntityExpansions")) {
            XMLReaderUtils.setMaxEntityExpansions(Integer.parseInt(child.getAttribute("maxEntityExpansions")));
        }
        if (child.hasAttribute("poolSize")) {
            XMLReaderUtils.setPoolSize(Integer.parseInt(child.getAttribute("poolSize")));
        }
    }

    public AutoDetectParserConfig getAutoDetectParserConfig() {
        return this.autoDetectParserConfig;
    }

    public Detector getDetector() {
        return this.detector;
    }

    public EncodingDetector getEncodingDetector() {
        return this.encodingDetector;
    }

    public ExecutorService getExecutorService() {
        return this.executorService;
    }

    public MediaTypeRegistry getMediaTypeRegistry() {
        return this.mimeTypes.getMediaTypeRegistry();
    }

    public MetadataFilter getMetadataFilter() {
        return this.metadataFilter;
    }

    public MetadataListFilter getMetadataListFilter() {
        return this.metadataListFilter;
    }

    public MimeTypes getMimeRepository() {
        return this.mimeTypes;
    }

    public Parser getParser() {
        return this.parser;
    }

    public ServiceLoader getServiceLoader() {
        return this.serviceLoader;
    }

    public Translator getTranslator() {
        return this.translator;
    }

    public TikaConfig(Path path) {
        this(XMLReaderUtils.buildDOM(path));
    }

    public TikaConfig(Path path, ServiceLoader serviceLoader) {
        this(XMLReaderUtils.buildDOM(path), serviceLoader);
    }

    public static void mustNotBeEmpty(String str, Path path) {
        if (path != null) {
            return;
        }
        throw new IllegalArgumentException("parameter '" + str + "' must be set in the config file");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public TikaConfig(java.io.File r1) {
        /*
            r0 = this;
            java.nio.file.Path r1 = org.apache.tika.config.c.a(r1)
            org.w3c.dom.Document r1 = org.apache.tika.utils.XMLReaderUtils.buildDOM(r1)
            r0.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.tika.config.TikaConfig.<init>(java.io.File):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public TikaConfig(java.io.File r1, org.apache.tika.config.ServiceLoader r2) {
        /*
            r0 = this;
            java.nio.file.Path r1 = org.apache.tika.config.c.a(r1)
            org.w3c.dom.Document r1 = org.apache.tika.utils.XMLReaderUtils.buildDOM(r1)
            r0.<init>(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.tika.config.TikaConfig.<init>(java.io.File, org.apache.tika.config.ServiceLoader):void");
    }

    public TikaConfig(URL url) {
        this(url, ServiceLoader.getContextClassLoader());
    }

    public TikaConfig(URL url, ClassLoader classLoader) {
        this(XMLReaderUtils.buildDOM(url.toString()).getDocumentElement(), classLoader);
    }

    public TikaConfig(URL url, ServiceLoader serviceLoader) {
        this(XMLReaderUtils.buildDOM(url.toString()).getDocumentElement(), serviceLoader);
    }

    public TikaConfig(InputStream inputStream) {
        this(XMLReaderUtils.buildDOM(inputStream));
    }

    public TikaConfig(Document document) {
        this(document.getDocumentElement());
    }

    public TikaConfig(Document document, ServiceLoader serviceLoader) {
        this(document.getDocumentElement(), serviceLoader);
    }

    public TikaConfig(Element element) {
        this(element, serviceLoaderFromDomElement(element, null));
    }

    public TikaConfig(Element element, ClassLoader classLoader) {
        this(element, serviceLoaderFromDomElement(element, classLoader));
    }

    private TikaConfig(Element element, ServiceLoader serviceLoader) {
        DetectorXmlLoader detectorXmlLoader = new DetectorXmlLoader();
        TranslatorXmlLoader translatorXmlLoader = new TranslatorXmlLoader();
        ExecutorServiceXmlLoader executorServiceXmlLoader = new ExecutorServiceXmlLoader();
        EncodingDetectorXmlLoader encodingDetectorXmlLoader = new EncodingDetectorXmlLoader();
        RendererXmlLoader rendererXmlLoader = new RendererXmlLoader();
        updateXMLReaderUtils(element);
        MimeTypes typesFromDomElement = typesFromDomElement(element);
        this.mimeTypes = typesFromDomElement;
        this.detector = detectorXmlLoader.loadOverall(element, typesFromDomElement, serviceLoader);
        EncodingDetector loadOverall = encodingDetectorXmlLoader.loadOverall(element, typesFromDomElement, serviceLoader);
        this.encodingDetector = loadOverall;
        Renderer loadOverall2 = rendererXmlLoader.loadOverall(element, typesFromDomElement, serviceLoader);
        this.renderer = loadOverall2;
        this.parser = new ParserXmlLoader(loadOverall, loadOverall2).loadOverall(element, typesFromDomElement, serviceLoader);
        this.translator = translatorXmlLoader.loadOverall(element, typesFromDomElement, serviceLoader);
        this.executorService = executorServiceXmlLoader.loadOverall(element, typesFromDomElement, serviceLoader);
        this.metadataFilter = MetadataFilter.load(element, true);
        this.metadataListFilter = MetadataListFilter.load(element, true);
        this.autoDetectParserConfig = AutoDetectParserConfig.load(element);
        this.serviceLoader = serviceLoader;
        setMaxJsonStringFieldLength(element);
        TIMES_INSTANTIATED.incrementAndGet();
    }

    public TikaConfig(ClassLoader classLoader) {
        ServiceLoader serviceLoader = new ServiceLoader(classLoader);
        this.serviceLoader = serviceLoader;
        MimeTypes defaultMimeTypes = getDefaultMimeTypes(classLoader);
        this.mimeTypes = defaultMimeTypes;
        this.detector = getDefaultDetector(defaultMimeTypes, serviceLoader);
        CompositeEncodingDetector defaultEncodingDetector = getDefaultEncodingDetector(serviceLoader);
        this.encodingDetector = defaultEncodingDetector;
        CompositeRenderer defaultRenderer = getDefaultRenderer(serviceLoader);
        this.renderer = defaultRenderer;
        this.parser = getDefaultParser(defaultMimeTypes, serviceLoader, defaultEncodingDetector, defaultRenderer);
        this.translator = getDefaultTranslator(serviceLoader);
        this.executorService = getDefaultExecutorService();
        this.metadataFilter = new NoOpFilter();
        this.metadataListFilter = new NoOpListFilter();
        this.autoDetectParserConfig = AutoDetectParserConfig.DEFAULT;
        TIMES_INSTANTIATED.incrementAndGet();
    }

    public TikaConfig() {
        String property = System.getProperty("tika.config");
        if (!StringUtils.isBlank(property)) {
            LOG.m("loading tika config from system property 'tika.config'");
        }
        if (StringUtils.isBlank(property)) {
            property = System.getenv("TIKA_CONFIG");
            if (!StringUtils.isBlank(property)) {
                LOG.m("loading tika config from environment variable 'TIKA_CONFIG'");
            }
        }
        if (StringUtils.isBlank(property)) {
            LOG.m("loading tika config from defaults; no config file specified");
            ServiceLoader serviceLoader = new ServiceLoader();
            this.serviceLoader = serviceLoader;
            MimeTypes defaultMimeTypes = getDefaultMimeTypes(ServiceLoader.getContextClassLoader());
            this.mimeTypes = defaultMimeTypes;
            CompositeEncodingDetector defaultEncodingDetector = getDefaultEncodingDetector(serviceLoader);
            this.encodingDetector = defaultEncodingDetector;
            CompositeRenderer defaultRenderer = getDefaultRenderer(serviceLoader);
            this.renderer = defaultRenderer;
            this.parser = getDefaultParser(defaultMimeTypes, serviceLoader, defaultEncodingDetector, defaultRenderer);
            this.detector = getDefaultDetector(defaultMimeTypes, serviceLoader);
            this.translator = getDefaultTranslator(serviceLoader);
            this.executorService = getDefaultExecutorService();
            this.metadataFilter = new NoOpFilter();
            this.metadataListFilter = new NoOpListFilter();
            this.autoDetectParserConfig = AutoDetectParserConfig.DEFAULT;
        } else {
            ServiceLoader serviceLoader2 = new ServiceLoader();
            mf.c cVar = LOG;
            cVar.m("loading tika config from: " + property);
            try {
                InputStream configInputStream = getConfigInputStream(property, serviceLoader2);
                Element documentElement = XMLReaderUtils.buildDOM(configInputStream).getDocumentElement();
                updateXMLReaderUtils(documentElement);
                ServiceLoader serviceLoaderFromDomElement = serviceLoaderFromDomElement(documentElement, serviceLoader2.getLoader());
                this.serviceLoader = serviceLoaderFromDomElement;
                DetectorXmlLoader detectorXmlLoader = new DetectorXmlLoader();
                EncodingDetectorXmlLoader encodingDetectorXmlLoader = new EncodingDetectorXmlLoader();
                RendererXmlLoader rendererXmlLoader = new RendererXmlLoader();
                TranslatorXmlLoader translatorXmlLoader = new TranslatorXmlLoader();
                ExecutorServiceXmlLoader executorServiceXmlLoader = new ExecutorServiceXmlLoader();
                MimeTypes typesFromDomElement = typesFromDomElement(documentElement);
                this.mimeTypes = typesFromDomElement;
                EncodingDetector loadOverall = encodingDetectorXmlLoader.loadOverall(documentElement, typesFromDomElement, serviceLoaderFromDomElement);
                this.encodingDetector = loadOverall;
                Renderer loadOverall2 = rendererXmlLoader.loadOverall(documentElement, typesFromDomElement, serviceLoaderFromDomElement);
                this.renderer = loadOverall2;
                this.parser = new ParserXmlLoader(loadOverall, loadOverall2).loadOverall(documentElement, typesFromDomElement, serviceLoaderFromDomElement);
                this.detector = detectorXmlLoader.loadOverall(documentElement, typesFromDomElement, serviceLoaderFromDomElement);
                this.translator = translatorXmlLoader.loadOverall(documentElement, typesFromDomElement, serviceLoaderFromDomElement);
                this.executorService = executorServiceXmlLoader.loadOverall(documentElement, typesFromDomElement, serviceLoaderFromDomElement);
                this.metadataFilter = MetadataFilter.load(documentElement, true);
                this.metadataListFilter = MetadataListFilter.load(documentElement, true);
                this.autoDetectParserConfig = AutoDetectParserConfig.load(documentElement);
                setMaxJsonStringFieldLength(documentElement);
                if (configInputStream != null) {
                    configInputStream.close();
                }
            } catch (SAXException e10) {
                throw new TikaException("Specified Tika configuration has syntax errors: " + property, e10);
            }
        }
        TIMES_INSTANTIATED.incrementAndGet();
    }
}

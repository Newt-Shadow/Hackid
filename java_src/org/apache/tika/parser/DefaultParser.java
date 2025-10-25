package org.apache.tika.parser;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import org.apache.tika.config.ServiceLoader;
import org.apache.tika.detect.DefaultEncodingDetector;
import org.apache.tika.detect.EncodingDetector;
import org.apache.tika.mime.MediaType;
import org.apache.tika.mime.MediaTypeRegistry;
import org.apache.tika.renderer.CompositeRenderer;
import org.apache.tika.renderer.Renderer;
import org.apache.tika.utils.ServiceLoaderUtils;
/* loaded from: classes2.dex */
public class DefaultParser extends CompositeParser {
    private static final long serialVersionUID = 3612324825403757520L;
    private final transient ServiceLoader loader;

    public DefaultParser(MediaTypeRegistry mediaTypeRegistry, ServiceLoader serviceLoader, Collection<Class<? extends Parser>> collection, EncodingDetector encodingDetector, Renderer renderer) {
        super(mediaTypeRegistry, getDefaultParsers(serviceLoader, encodingDetector, renderer, collection));
        this.loader = serviceLoader;
    }

    private static List<Parser> getDefaultParsers(ServiceLoader serviceLoader, EncodingDetector encodingDetector, Renderer renderer, Collection<Class<? extends Parser>> collection) {
        List<Parser> loadStaticServiceProviders = serviceLoader.loadStaticServiceProviders(Parser.class, collection);
        if (encodingDetector != null) {
            for (Parser parser : loadStaticServiceProviders) {
                setEncodingDetector(parser, encodingDetector);
            }
        }
        if (renderer != null) {
            for (Parser parser2 : loadStaticServiceProviders) {
                setRenderer(parser2, renderer);
            }
        }
        ServiceLoaderUtils.sortLoadedClasses(loadStaticServiceProviders);
        Collections.reverse(loadStaticServiceProviders);
        return loadStaticServiceProviders;
    }

    private static void setEncodingDetector(Parser parser, EncodingDetector encodingDetector) {
        if (parser instanceof AbstractEncodingDetectorParser) {
            ((AbstractEncodingDetectorParser) parser).setEncodingDetector(encodingDetector);
        } else if (parser instanceof CompositeParser) {
            for (Parser parser2 : ((CompositeParser) parser).getAllComponentParsers()) {
                setEncodingDetector(parser2, encodingDetector);
            }
        } else if (parser instanceof ParserDecorator) {
            setEncodingDetector(((ParserDecorator) parser).getWrappedParser(), encodingDetector);
        }
    }

    private static void setRenderer(Parser parser, Renderer renderer) {
        if (parser instanceof RenderingParser) {
            ((RenderingParser) parser).setRenderer(renderer);
        } else if (parser instanceof CompositeParser) {
            for (Parser parser2 : ((CompositeParser) parser).getAllComponentParsers()) {
                setRenderer(parser2, renderer);
            }
        } else if (parser instanceof ParserDecorator) {
            setRenderer(((ParserDecorator) parser).getWrappedParser(), renderer);
        }
    }

    @Override // org.apache.tika.parser.CompositeParser
    public List<Parser> getAllComponentParsers() {
        List<Parser> allComponentParsers = super.getAllComponentParsers();
        if (this.loader != null) {
            ArrayList arrayList = new ArrayList(allComponentParsers);
            arrayList.addAll(this.loader.loadDynamicServiceProviders(Parser.class));
            return arrayList;
        }
        return allComponentParsers;
    }

    @Override // org.apache.tika.parser.CompositeParser
    public Map<MediaType, Parser> getParsers(ParseContext parseContext) {
        Map<MediaType, Parser> parsers = super.getParsers(parseContext);
        if (this.loader != null) {
            MediaTypeRegistry mediaTypeRegistry = getMediaTypeRegistry();
            List<Parser> loadDynamicServiceProviders = this.loader.loadDynamicServiceProviders(Parser.class);
            Collections.reverse(loadDynamicServiceProviders);
            for (Parser parser : loadDynamicServiceProviders) {
                for (MediaType mediaType : parser.getSupportedTypes(parseContext)) {
                    parsers.put(mediaTypeRegistry.normalize(mediaType), parser);
                }
            }
        }
        return parsers;
    }

    public DefaultParser(MediaTypeRegistry mediaTypeRegistry, ServiceLoader serviceLoader, Collection<Class<? extends Parser>> collection) {
        super(mediaTypeRegistry, getDefaultParsers(serviceLoader, new DefaultEncodingDetector(serviceLoader), new CompositeRenderer(serviceLoader), collection));
        this.loader = serviceLoader;
    }

    public DefaultParser(MediaTypeRegistry mediaTypeRegistry, ServiceLoader serviceLoader, EncodingDetector encodingDetector, Renderer renderer) {
        this(mediaTypeRegistry, serviceLoader, Collections.EMPTY_SET, encodingDetector, renderer);
    }

    public DefaultParser(MediaTypeRegistry mediaTypeRegistry, ServiceLoader serviceLoader) {
        this(mediaTypeRegistry, serviceLoader, Collections.EMPTY_SET, new DefaultEncodingDetector(serviceLoader), new CompositeRenderer(serviceLoader));
    }

    public DefaultParser(MediaTypeRegistry mediaTypeRegistry, ClassLoader classLoader) {
        this(mediaTypeRegistry, new ServiceLoader(classLoader));
    }

    public DefaultParser(ClassLoader classLoader) {
        this(MediaTypeRegistry.getDefaultRegistry(), new ServiceLoader(classLoader));
    }

    public DefaultParser(MediaTypeRegistry mediaTypeRegistry) {
        this(mediaTypeRegistry, new ServiceLoader());
    }

    public DefaultParser() {
        this(MediaTypeRegistry.getDefaultRegistry());
    }
}

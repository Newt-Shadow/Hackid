package org.apache.tika.language.translate;

import java.util.Comparator;
import java.util.List;
import org.apache.tika.config.ServiceLoader;
import org.apache.tika.exception.TikaException;
import org.apache.tika.language.translate.Translator;
import org.apache.tika.utils.CompareUtils;
/* loaded from: classes2.dex */
public class DefaultTranslator implements Translator {
    private final transient ServiceLoader loader;

    public DefaultTranslator(ServiceLoader serviceLoader) {
        this.loader = serviceLoader;
    }

    private static List<Translator> getDefaultTranslators(ServiceLoader serviceLoader) {
        List<Translator> loadStaticServiceProviders = serviceLoader.loadStaticServiceProviders(Translator.class);
        loadStaticServiceProviders.sort(new Comparator() { // from class: if.a
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return CompareUtils.compareClassName((Translator) obj, (Translator) obj2);
            }
        });
        return loadStaticServiceProviders;
    }

    private static Translator getFirstAvailable(ServiceLoader serviceLoader) {
        for (Translator translator : getDefaultTranslators(serviceLoader)) {
            if (translator.isAvailable()) {
                return translator;
            }
        }
        return null;
    }

    public Translator getTranslator() {
        return getFirstAvailable(this.loader);
    }

    public List<Translator> getTranslators() {
        return getDefaultTranslators(this.loader);
    }

    @Override // org.apache.tika.language.translate.Translator
    public boolean isAvailable() {
        if (getFirstAvailable(this.loader) != null) {
            return true;
        }
        return false;
    }

    @Override // org.apache.tika.language.translate.Translator
    public String translate(String str, String str2, String str3) {
        Translator firstAvailable = getFirstAvailable(this.loader);
        if (firstAvailable != null) {
            return firstAvailable.translate(str, str2, str3);
        }
        throw new TikaException("No translators currently available");
    }

    public DefaultTranslator() {
        this(new ServiceLoader());
    }

    @Override // org.apache.tika.language.translate.Translator
    public String translate(String str, String str2) {
        Translator firstAvailable = getFirstAvailable(this.loader);
        if (firstAvailable != null) {
            return firstAvailable.translate(str, str2);
        }
        throw new TikaException("No translators currently available");
    }
}

package org.apache.tika.metadata.filter;

import java.io.Serializable;
import org.apache.tika.config.ConfigBase;
import org.apache.tika.exception.TikaConfigException;
import org.apache.tika.metadata.Metadata;
import org.w3c.dom.Element;
/* loaded from: classes2.dex */
public abstract class MetadataFilter extends ConfigBase implements Serializable {
    public static MetadataFilter load(Element element, boolean z10) {
        try {
            return (MetadataFilter) ConfigBase.buildComposite("metadataFilters", CompositeMetadataFilter.class, "metadataFilter", MetadataFilter.class, element);
        } catch (TikaConfigException e10) {
            if (z10 && e10.getMessage().contains("could not find metadataFilters")) {
                return new NoOpFilter();
            }
            throw e10;
        }
    }

    public abstract void filter(Metadata metadata);
}

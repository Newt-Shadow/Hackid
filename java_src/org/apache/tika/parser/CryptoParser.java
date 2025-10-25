package org.apache.tika.parser;

import java.io.InputStream;
import java.security.AlgorithmParameters;
import java.security.GeneralSecurityException;
import java.security.Key;
import java.security.Provider;
import java.security.SecureRandom;
import java.util.Set;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import org.apache.tika.exception.EncryptedDocumentException;
import org.apache.tika.exception.TikaException;
import org.apache.tika.metadata.Metadata;
import org.apache.tika.mime.MediaType;
import org.xml.sax.ContentHandler;
/* loaded from: classes2.dex */
public abstract class CryptoParser extends DelegatingParser {
    private static final long serialVersionUID = -3507995752666557731L;
    private final Provider provider;
    private final String transformation;
    private final Set<MediaType> types;

    public CryptoParser(String str, Provider provider, Set<MediaType> set) {
        this.transformation = str;
        this.provider = provider;
        this.types = set;
    }

    @Override // org.apache.tika.parser.DelegatingParser, org.apache.tika.parser.Parser
    public Set<MediaType> getSupportedTypes(ParseContext parseContext) {
        return this.types;
    }

    @Override // org.apache.tika.parser.DelegatingParser, org.apache.tika.parser.Parser
    public void parse(InputStream inputStream, ContentHandler contentHandler, Metadata metadata, ParseContext parseContext) {
        Cipher cipher;
        try {
            Provider provider = this.provider;
            if (provider != null) {
                cipher = Cipher.getInstance(this.transformation, provider);
            } else {
                cipher = Cipher.getInstance(this.transformation);
            }
            Key key = (Key) parseContext.get(Key.class);
            if (key != null) {
                AlgorithmParameters algorithmParameters = (AlgorithmParameters) parseContext.get(AlgorithmParameters.class);
                SecureRandom secureRandom = (SecureRandom) parseContext.get(SecureRandom.class);
                if (algorithmParameters != null && secureRandom != null) {
                    cipher.init(2, key, algorithmParameters, secureRandom);
                } else if (algorithmParameters != null) {
                    cipher.init(2, key, algorithmParameters);
                } else if (secureRandom != null) {
                    cipher.init(2, key, secureRandom);
                } else {
                    cipher.init(2, key);
                }
                super.parse(new CipherInputStream(inputStream, cipher), contentHandler, metadata, parseContext);
                return;
            }
            throw new EncryptedDocumentException("No decryption key provided");
        } catch (GeneralSecurityException e10) {
            throw new TikaException("Unable to decrypt document stream", e10);
        }
    }

    public CryptoParser(String str, Set<MediaType> set) {
        this(str, null, set);
    }
}

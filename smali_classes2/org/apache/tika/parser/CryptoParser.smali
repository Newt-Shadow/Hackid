.class public abstract Lorg/apache/tika/parser/CryptoParser;
.super Lorg/apache/tika/parser/DelegatingParser;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x30aee78d0744ed23L


# instance fields
.field private final provider:Ljava/security/Provider;

.field private final transformation:Ljava/lang/String;

.field private final types:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/tika/mime/MediaType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/Provider;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/security/Provider;",
            "Ljava/util/Set<",
            "Lorg/apache/tika/mime/MediaType;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/apache/tika/parser/DelegatingParser;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/tika/parser/CryptoParser;->transformation:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lorg/apache/tika/parser/CryptoParser;->provider:Ljava/security/Provider;

    .line 4
    iput-object p3, p0, Lorg/apache/tika/parser/CryptoParser;->types:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lorg/apache/tika/mime/MediaType;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0, p2}, Lorg/apache/tika/parser/CryptoParser;-><init>(Ljava/lang/String;Ljava/security/Provider;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public getSupportedTypes(Lorg/apache/tika/parser/ParseContext;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tika/parser/ParseContext;",
            ")",
            "Ljava/util/Set<",
            "Lorg/apache/tika/mime/MediaType;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lorg/apache/tika/parser/CryptoParser;->types:Ljava/util/Set;

    .line 2
    .line 3
    return-object p1
.end method

.method public parse(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/apache/tika/parser/CryptoParser;->provider:Ljava/security/Provider;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lorg/apache/tika/parser/CryptoParser;->transformation:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v1, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lorg/apache/tika/parser/CryptoParser;->transformation:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    const-class v1, Ljava/security/Key;

    .line 19
    .line 20
    invoke-virtual {p4, v1}, Lorg/apache/tika/parser/ParseContext;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/security/Key;

    .line 25
    .line 26
    if-eqz v1, :cond_4

    .line 27
    .line 28
    const-class v2, Ljava/security/AlgorithmParameters;

    .line 29
    .line 30
    invoke-virtual {p4, v2}, Lorg/apache/tika/parser/ParseContext;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/security/AlgorithmParameters;

    .line 35
    .line 36
    const-class v3, Ljava/security/SecureRandom;

    .line 37
    .line 38
    invoke-virtual {p4, v3}, Lorg/apache/tika/parser/ParseContext;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Ljava/security/SecureRandom;

    .line 43
    .line 44
    const/4 v4, 0x2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    invoke-virtual {v0, v4, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    if-eqz v2, :cond_2

    .line 54
    .line 55
    invoke-virtual {v0, v4, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    if-eqz v3, :cond_3

    .line 60
    .line 61
    invoke-virtual {v0, v4, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    invoke-virtual {v0, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 66
    .line 67
    .line 68
    :goto_1
    new-instance v1, Ljavax/crypto/CipherInputStream;

    .line 69
    .line 70
    invoke-direct {v1, p1, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 71
    .line 72
    .line 73
    invoke-super {p0, v1, p2, p3, p4}, Lorg/apache/tika/parser/DelegatingParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_4
    new-instance p1, Lorg/apache/tika/exception/EncryptedDocumentException;

    .line 78
    .line 79
    const-string p2, "No decryption key provided"

    .line 80
    .line 81
    invoke-direct {p1, p2}, Lorg/apache/tika/exception/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :catch_0
    move-exception p1

    .line 86
    new-instance p2, Lorg/apache/tika/exception/TikaException;

    .line 87
    .line 88
    const-string p3, "Unable to decrypt document stream"

    .line 89
    .line 90
    invoke-direct {p2, p3, p1}, Lorg/apache/tika/exception/TikaException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    throw p2
.end method

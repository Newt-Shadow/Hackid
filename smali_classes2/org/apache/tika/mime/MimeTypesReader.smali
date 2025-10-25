.class public Lorg/apache/tika/mime/MimeTypesReader;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"

# interfaces
.implements Lorg/apache/tika/mime/MimeTypesReaderMetKeys;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tika/mime/MimeTypesReader$ClauseRecord;,
        Lorg/apache/tika/mime/MimeTypesReader$MinShouldMatchVal;
    }
.end annotation


# static fields
.field static LOG:Lmf/c;

.field private static POOL_SIZE:I

.field private static final READ_WRITE_LOCK:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static SAX_PARSERS:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Ljavax/xml/parsers/SAXParser;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected characters:Ljava/lang/StringBuilder;

.field private current:Lorg/apache/tika/mime/MimeTypesReader$ClauseRecord;

.field protected priority:I

.field protected type:Lorg/apache/tika/mime/MimeType;

.field protected final types:Lorg/apache/tika/mime/MimeTypes;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/apache/tika/mime/MimeTypesReader;->READ_WRITE_LOCK:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 7
    .line 8
    const/16 v0, 0xa

    .line 9
    .line 10
    sput v0, Lorg/apache/tika/mime/MimeTypesReader;->POOL_SIZE:I

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 13
    .line 14
    sget v1, Lorg/apache/tika/mime/MimeTypesReader;->POOL_SIZE:I

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lorg/apache/tika/mime/MimeTypesReader;->SAX_PARSERS:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 20
    .line 21
    const-class v0, Lorg/apache/tika/mime/MimeTypesReader;

    .line 22
    .line 23
    invoke-static {v0}, Lmf/e;->l(Ljava/lang/Class;)Lmf/c;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lorg/apache/tika/mime/MimeTypesReader;->LOG:Lmf/c;

    .line 28
    .line 29
    :try_start_0
    sget v0, Lorg/apache/tika/mime/MimeTypesReader;->POOL_SIZE:I

    .line 30
    .line 31
    invoke-static {v0}, Lorg/apache/tika/mime/MimeTypesReader;->setPoolSize(I)V
    :try_end_0
    .catch Lorg/apache/tika/exception/TikaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 36
    new-instance v1, Ljava/lang/RuntimeException;

    .line 37
    .line 38
    const-string v2, "problem initializing SAXParser pool"

    .line 39
    .line 40
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    throw v1
.end method

.method protected constructor <init>(Lorg/apache/tika/mime/MimeTypes;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/apache/tika/mime/MimeTypesReader;->type:Lorg/apache/tika/mime/MimeType;

    .line 6
    .line 7
    iput-object v0, p0, Lorg/apache/tika/mime/MimeTypesReader;->characters:Ljava/lang/StringBuilder;

    .line 8
    .line 9
    new-instance v1, Lorg/apache/tika/mime/MimeTypesReader$ClauseRecord;

    .line 10
    .line 11
    invoke-direct {v1, p0, v0}, Lorg/apache/tika/mime/MimeTypesReader$ClauseRecord;-><init>(Lorg/apache/tika/mime/MimeTypesReader;Lorg/apache/tika/mime/Clause;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lorg/apache/tika/mime/MimeTypesReader;->current:Lorg/apache/tika/mime/MimeTypesReader$ClauseRecord;

    .line 15
    .line 16
    iput-object p1, p0, Lorg/apache/tika/mime/MimeTypesReader;->types:Lorg/apache/tika/mime/MimeTypes;

    .line 17
    .line 18
    return-void
.end method

.method static bridge synthetic a(Lorg/apache/tika/mime/MimeTypesReader;)Lorg/apache/tika/mime/MimeTypesReader$ClauseRecord;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/tika/mime/MimeTypesReader;->current:Lorg/apache/tika/mime/MimeTypesReader$ClauseRecord;

    return-object p0
.end method

.method private static acquireSAXParser()Ljavax/xml/parsers/SAXParser;
    .locals 5

    .line 1
    :cond_0
    :try_start_0
    sget-object v0, Lorg/apache/tika/mime/MimeTypesReader;->READ_WRITE_LOCK:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lorg/apache/tika/mime/MimeTypesReader;->SAX_PARSERS:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 11
    .line 12
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 13
    .line 14
    const-wide/16 v3, 0xa

    .line 15
    .line 16
    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljavax/xml/parsers/SAXParser;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 27
    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    return-object v1

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    :try_start_1
    new-instance v1, Lorg/apache/tika/exception/TikaException;

    .line 36
    .line 37
    const-string v2, "interrupted while waiting for SAXParser"

    .line 38
    .line 39
    invoke-direct {v1, v2, v0}, Lorg/apache/tika/exception/TikaException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :goto_0
    sget-object v1, Lorg/apache/tika/mime/MimeTypesReader;->READ_WRITE_LOCK:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 50
    .line 51
    .line 52
    throw v0
.end method

.method static bridge synthetic b(Lorg/apache/tika/mime/MimeTypesReader;Lorg/apache/tika/mime/MimeTypesReader$ClauseRecord;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/tika/mime/MimeTypesReader;->current:Lorg/apache/tika/mime/MimeTypesReader$ClauseRecord;

    return-void
.end method

.method private static newSAXParser()Ljavax/xml/parsers/SAXParser;
    .locals 5

    .line 1
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    const-string v1, "http://javax.xml.XMLConstants/feature/secure-processing"

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    sget-object v1, Lorg/apache/tika/mime/MimeTypesReader;->LOG:Lmf/c;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v4, "can\'t set secure processing feature on: "

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, ". User assumes responsibility for consequences."

    .line 36
    .line 37
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-interface {v1, v2}, Lmf/c;->x(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    .line 48
    .line 49
    .line 50
    move-result-object v0
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    return-object v0

    .line 52
    :catch_1
    move-exception v0

    .line 53
    goto :goto_1

    .line 54
    :catch_2
    move-exception v0

    .line 55
    :goto_1
    new-instance v1, Lorg/apache/tika/exception/TikaException;

    .line 56
    .line 57
    const-string v2, "Can\'t create new sax parser"

    .line 58
    .line 59
    invoke-direct {v1, v2, v0}, Lorg/apache/tika/exception/TikaException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    throw v1
.end method

.method private static releaseParser(Ljavax/xml/parsers/SAXParser;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljavax/xml/parsers/SAXParser;->reset()V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    :catch_0
    :try_start_1
    sget-object v0, Lorg/apache/tika/mime/MimeTypesReader;->READ_WRITE_LOCK:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lorg/apache/tika/mime/MimeTypesReader;->SAX_PARSERS:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    sget-object v0, Lorg/apache/tika/mime/MimeTypesReader;->READ_WRITE_LOCK:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 34
    .line 35
    .line 36
    throw p0
.end method

.method public static setPoolSize(I)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lorg/apache/tika/mime/MimeTypesReader;->READ_WRITE_LOCK:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lorg/apache/tika/mime/MimeTypesReader;->SAX_PARSERS:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-ge v0, p0, :cond_0

    .line 19
    .line 20
    sget-object v1, Lorg/apache/tika/mime/MimeTypesReader;->SAX_PARSERS:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 21
    .line 22
    invoke-static {}, Lorg/apache/tika/mime/MimeTypesReader;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    sput p0, Lorg/apache/tika/mime/MimeTypesReader;->POOL_SIZE:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    sget-object p0, Lorg/apache/tika/mime/MimeTypesReader;->READ_WRITE_LOCK:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    sget-object v0, Lorg/apache/tika/mime/MimeTypesReader;->READ_WRITE_LOCK:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 52
    .line 53
    .line 54
    throw p0
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tika/mime/MimeTypesReader;->characters:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lorg/apache/tika/mime/MimeTypesReader;->type:Lorg/apache/tika/mime/MimeType;

    .line 2
    .line 3
    if-eqz p1, :cond_7

    .line 4
    .line 5
    const-string p1, "mime-type"

    .line 6
    .line 7
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 p2, 0x0

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iput-object p2, p0, Lorg/apache/tika/mime/MimeTypesReader;->type:Lorg/apache/tika/mime/MimeType;

    .line 15
    .line 16
    goto/16 :goto_1

    .line 17
    .line 18
    :cond_0
    const-string p1, "_comment"

    .line 19
    .line 20
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Lorg/apache/tika/mime/MimeTypesReader;->type:Lorg/apache/tika/mime/MimeType;

    .line 27
    .line 28
    iget-object p3, p0, Lorg/apache/tika/mime/MimeTypesReader;->characters:Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    invoke-virtual {p1, p3}, Lorg/apache/tika/mime/MimeType;->setDescription(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iput-object p2, p0, Lorg/apache/tika/mime/MimeTypesReader;->characters:Ljava/lang/StringBuilder;

    .line 42
    .line 43
    goto/16 :goto_1

    .line 44
    .line 45
    :cond_1
    const-string p1, "acronym"

    .line 46
    .line 47
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    iget-object p1, p0, Lorg/apache/tika/mime/MimeTypesReader;->type:Lorg/apache/tika/mime/MimeType;

    .line 54
    .line 55
    iget-object p3, p0, Lorg/apache/tika/mime/MimeTypesReader;->characters:Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    invoke-virtual {p1, p3}, Lorg/apache/tika/mime/MimeType;->setAcronym(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iput-object p2, p0, Lorg/apache/tika/mime/MimeTypesReader;->characters:Ljava/lang/StringBuilder;

    .line 69
    .line 70
    goto/16 :goto_1

    .line 71
    .line 72
    :cond_2
    const-string p1, "tika:uti"

    .line 73
    .line 74
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_3

    .line 79
    .line 80
    iget-object p1, p0, Lorg/apache/tika/mime/MimeTypesReader;->type:Lorg/apache/tika/mime/MimeType;

    .line 81
    .line 82
    iget-object p3, p0, Lorg/apache/tika/mime/MimeTypesReader;->characters:Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p3

    .line 88
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    invoke-virtual {p1, p3}, Lorg/apache/tika/mime/MimeType;->setUniformTypeIdentifier(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iput-object p2, p0, Lorg/apache/tika/mime/MimeTypesReader;->characters:Ljava/lang/StringBuilder;

    .line 96
    .line 97
    goto/16 :goto_1

    .line 98
    .line 99
    :cond_3
    const-string p1, "tika:link"

    .line 100
    .line 101
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_4

    .line 106
    .line 107
    :try_start_0
    iget-object p1, p0, Lorg/apache/tika/mime/MimeTypesReader;->type:Lorg/apache/tika/mime/MimeType;

    .line 108
    .line 109
    new-instance p3, Ljava/net/URI;

    .line 110
    .line 111
    iget-object v0, p0, Lorg/apache/tika/mime/MimeTypesReader;->characters:Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-direct {p3, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, p3}, Lorg/apache/tika/mime/MimeType;->addLink(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .line 126
    .line 127
    iput-object p2, p0, Lorg/apache/tika/mime/MimeTypesReader;->characters:Ljava/lang/StringBuilder;

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :catch_0
    move-exception p1

    .line 131
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 132
    .line 133
    iget-object p3, p0, Lorg/apache/tika/mime/MimeTypesReader;->characters:Ljava/lang/StringBuilder;

    .line 134
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    const-string v1, "unable to parse link: "

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p3

    .line 152
    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    .line 154
    .line 155
    throw p2

    .line 156
    :cond_4
    const-string p1, "match"

    .line 157
    .line 158
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    if-eqz p1, :cond_5

    .line 163
    .line 164
    iget-object p1, p0, Lorg/apache/tika/mime/MimeTypesReader;->current:Lorg/apache/tika/mime/MimeTypesReader$ClauseRecord;

    .line 165
    .line 166
    invoke-virtual {p1}, Lorg/apache/tika/mime/MimeTypesReader$ClauseRecord;->stop()V

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_5
    const-string p1, "magic"

    .line 171
    .line 172
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    if-eqz p1, :cond_7

    .line 177
    .line 178
    iget-object p1, p0, Lorg/apache/tika/mime/MimeTypesReader;->current:Lorg/apache/tika/mime/MimeTypesReader$ClauseRecord;

    .line 179
    .line 180
    invoke-virtual {p1}, Lorg/apache/tika/mime/MimeTypesReader$ClauseRecord;->getClauses()Ljava/util/List;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 189
    .line 190
    .line 191
    move-result p3

    .line 192
    if-eqz p3, :cond_6

    .line 193
    .line 194
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object p3

    .line 198
    check-cast p3, Lorg/apache/tika/mime/Clause;

    .line 199
    .line 200
    iget-object v0, p0, Lorg/apache/tika/mime/MimeTypesReader;->type:Lorg/apache/tika/mime/MimeType;

    .line 201
    .line 202
    new-instance v1, Lorg/apache/tika/mime/Magic;

    .line 203
    .line 204
    iget v2, p0, Lorg/apache/tika/mime/MimeTypesReader;->priority:I

    .line 205
    .line 206
    invoke-direct {v1, v0, v2, p3}, Lorg/apache/tika/mime/Magic;-><init>(Lorg/apache/tika/mime/MimeType;ILorg/apache/tika/mime/Clause;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v1}, Lorg/apache/tika/mime/MimeType;->addMagic(Lorg/apache/tika/mime/Magic;)V

    .line 210
    .line 211
    .line 212
    goto :goto_0

    .line 213
    :cond_6
    iput-object p2, p0, Lorg/apache/tika/mime/MimeTypesReader;->current:Lorg/apache/tika/mime/MimeTypesReader$ClauseRecord;

    .line 214
    .line 215
    :cond_7
    :goto_1
    return-void
.end method

.method protected handleGlobError(Lorg/apache/tika/mime/MimeType;Ljava/lang/String;Lorg/apache/tika/mime/MimeTypeException;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    .line 1
    new-instance p1, Lorg/xml/sax/SAXException;

    .line 2
    .line 3
    invoke-direct {p1, p3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method protected handleMimeError(Ljava/lang/String;Lorg/apache/tika/mime/MimeTypeException;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    .line 1
    new-instance p1, Lorg/xml/sax/SAXException;

    .line 2
    .line 3
    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lorg/apache/tika/mime/MimeTypesReader;->acquireSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1, p0}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Lorg/apache/tika/exception/TikaException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-static {v0}, Lorg/apache/tika/mime/MimeTypesReader;->releaseParser(Ljavax/xml/parsers/SAXParser;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    :try_start_1
    new-instance v1, Lorg/apache/tika/mime/MimeTypeException;

    const-string v2, "Invalid type configuration"

    invoke-direct {v1, v2, p1}, Lorg/apache/tika/mime/MimeTypeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p1

    .line 5
    new-instance v1, Lorg/apache/tika/mime/MimeTypeException;

    const-string v2, "Unable to create an XML parser"

    invoke-direct {v1, v2, p1}, Lorg/apache/tika/mime/MimeTypeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_0

    .line 6
    invoke-static {v0}, Lorg/apache/tika/mime/MimeTypesReader;->releaseParser(Ljavax/xml/parsers/SAXParser;)V

    .line 7
    :cond_0
    throw p1
.end method

.method public read(Lorg/w3c/dom/Document;)V
    .locals 2

    .line 8
    :try_start_0
    invoke-static {}, Lorg/apache/tika/utils/XMLReaderUtils;->getTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    .line 9
    new-instance v1, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v1, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance p1, Ljavax/xml/transform/sax/SAXResult;

    invoke-direct {p1, p0}, Ljavax/xml/transform/sax/SAXResult;-><init>(Lorg/xml/sax/ContentHandler;)V

    invoke-virtual {v0, v1, p1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/tika/exception/TikaException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 10
    :goto_0
    new-instance v0, Lorg/apache/tika/mime/MimeTypeException;

    const-string v1, "Failed to parse type registry"

    invoke-direct {v0, v1, p1}, Lorg/apache/tika/mime/MimeTypeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 1

    .line 1
    new-instance p1, Lorg/xml/sax/InputSource;

    .line 2
    .line 3
    new-instance p2, Lorg/apache/commons/io/input/h;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    invoke-direct {p2, v0}, Lorg/apache/commons/io/input/h;-><init>([B)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, p2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 12
    .line 13
    .line 14
    return-object p1
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lorg/apache/tika/mime/MimeTypesReader;->type:Lorg/apache/tika/mime/MimeType;

    .line 2
    .line 3
    const-string p2, "type"

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, "mime-type"

    .line 8
    .line 9
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_b

    .line 14
    .line 15
    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string p2, "interpreted"

    .line 20
    .line 21
    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    const-string v0, "true"

    .line 26
    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    :try_start_0
    iget-object v0, p0, Lorg/apache/tika/mime/MimeTypesReader;->types:Lorg/apache/tika/mime/MimeTypes;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lorg/apache/tika/mime/MimeTypes;->forName(Ljava/lang/String;)Lorg/apache/tika/mime/MimeType;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lorg/apache/tika/mime/MimeTypesReader;->type:Lorg/apache/tika/mime/MimeType;

    .line 38
    .line 39
    invoke-virtual {v0, p2}, Lorg/apache/tika/mime/MimeType;->setInterpreted(Z)V
    :try_end_0
    .catch Lorg/apache/tika/mime/MimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto/16 :goto_2

    .line 43
    .line 44
    :catch_0
    move-exception p2

    .line 45
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/tika/mime/MimeTypesReader;->handleMimeError(Ljava/lang/String;Lorg/apache/tika/mime/MimeTypeException;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_2

    .line 49
    .line 50
    :cond_0
    const-string p1, "alias"

    .line 51
    .line 52
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iget-object p2, p0, Lorg/apache/tika/mime/MimeTypesReader;->types:Lorg/apache/tika/mime/MimeTypes;

    .line 63
    .line 64
    iget-object p3, p0, Lorg/apache/tika/mime/MimeTypesReader;->type:Lorg/apache/tika/mime/MimeType;

    .line 65
    .line 66
    invoke-static {p1}, Lorg/apache/tika/mime/MediaType;->parse(Ljava/lang/String;)Lorg/apache/tika/mime/MediaType;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p2, p3, p1}, Lorg/apache/tika/mime/MimeTypes;->addAlias(Lorg/apache/tika/mime/MimeType;Lorg/apache/tika/mime/MediaType;)V

    .line 71
    .line 72
    .line 73
    goto/16 :goto_2

    .line 74
    .line 75
    :cond_1
    const-string p1, "sub-class-of"

    .line 76
    .line 77
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_2

    .line 82
    .line 83
    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iget-object p2, p0, Lorg/apache/tika/mime/MimeTypesReader;->types:Lorg/apache/tika/mime/MimeTypes;

    .line 88
    .line 89
    iget-object p3, p0, Lorg/apache/tika/mime/MimeTypesReader;->type:Lorg/apache/tika/mime/MimeType;

    .line 90
    .line 91
    invoke-static {p1}, Lorg/apache/tika/mime/MediaType;->parse(Ljava/lang/String;)Lorg/apache/tika/mime/MediaType;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p2, p3, p1}, Lorg/apache/tika/mime/MimeTypes;->setSuperType(Lorg/apache/tika/mime/MimeType;Lorg/apache/tika/mime/MediaType;)V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_2

    .line 99
    .line 100
    :cond_2
    const-string p1, "acronym"

    .line 101
    .line 102
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-nez p1, :cond_a

    .line 107
    .line 108
    const-string p1, "_comment"

    .line 109
    .line 110
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-nez p1, :cond_a

    .line 115
    .line 116
    const-string p1, "tika:link"

    .line 117
    .line 118
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-nez p1, :cond_a

    .line 123
    .line 124
    const-string p1, "tika:uti"

    .line 125
    .line 126
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    if-eqz p1, :cond_3

    .line 131
    .line 132
    goto/16 :goto_1

    .line 133
    .line 134
    :cond_3
    const-string p1, "glob"

    .line 135
    .line 136
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-eqz p1, :cond_4

    .line 141
    .line 142
    const-string p1, "pattern"

    .line 143
    .line 144
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    const-string p1, "isregex"

    .line 149
    .line 150
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    if-eqz v2, :cond_b

    .line 155
    .line 156
    :try_start_1
    iget-object p2, p0, Lorg/apache/tika/mime/MimeTypesReader;->types:Lorg/apache/tika/mime/MimeTypes;

    .line 157
    .line 158
    iget-object v0, p0, Lorg/apache/tika/mime/MimeTypesReader;->type:Lorg/apache/tika/mime/MimeType;

    .line 159
    .line 160
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    invoke-virtual {p2, v0, v2, p1}, Lorg/apache/tika/mime/MimeTypes;->addPattern(Lorg/apache/tika/mime/MimeType;Ljava/lang/String;Z)V
    :try_end_1
    .catch Lorg/apache/tika/mime/MimeTypeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 165
    .line 166
    .line 167
    goto/16 :goto_2

    .line 168
    .line 169
    :catch_1
    move-exception p1

    .line 170
    move-object v3, p1

    .line 171
    iget-object v1, p0, Lorg/apache/tika/mime/MimeTypesReader;->type:Lorg/apache/tika/mime/MimeType;

    .line 172
    .line 173
    move-object v0, p0

    .line 174
    move-object v4, p3

    .line 175
    move-object v5, p4

    .line 176
    invoke-virtual/range {v0 .. v5}, Lorg/apache/tika/mime/MimeTypesReader;->handleGlobError(Lorg/apache/tika/mime/MimeType;Ljava/lang/String;Lorg/apache/tika/mime/MimeTypeException;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 177
    .line 178
    .line 179
    goto/16 :goto_2

    .line 180
    .line 181
    :cond_4
    const-string p1, "root-XML"

    .line 182
    .line 183
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    if-eqz p1, :cond_5

    .line 188
    .line 189
    const-string p1, "namespaceURI"

    .line 190
    .line 191
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    const-string p2, "localName"

    .line 196
    .line 197
    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p2

    .line 201
    iget-object p3, p0, Lorg/apache/tika/mime/MimeTypesReader;->type:Lorg/apache/tika/mime/MimeType;

    .line 202
    .line 203
    invoke-virtual {p3, p1, p2}, Lorg/apache/tika/mime/MimeType;->addRootXML(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    goto/16 :goto_2

    .line 207
    .line 208
    :cond_5
    const-string p1, "match"

    .line 209
    .line 210
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    if-eqz p1, :cond_8

    .line 215
    .line 216
    const-string p1, "minShouldMatch"

    .line 217
    .line 218
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p3

    .line 222
    if-eqz p3, :cond_6

    .line 223
    .line 224
    new-instance p2, Lorg/apache/tika/mime/MimeTypesReader$ClauseRecord;

    .line 225
    .line 226
    new-instance p3, Lorg/apache/tika/mime/MimeTypesReader$MinShouldMatchVal;

    .line 227
    .line 228
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 233
    .line 234
    .line 235
    move-result p1

    .line 236
    invoke-direct {p3, p1}, Lorg/apache/tika/mime/MimeTypesReader$MinShouldMatchVal;-><init>(I)V

    .line 237
    .line 238
    .line 239
    invoke-direct {p2, p0, p3}, Lorg/apache/tika/mime/MimeTypesReader$ClauseRecord;-><init>(Lorg/apache/tika/mime/MimeTypesReader;Lorg/apache/tika/mime/Clause;)V

    .line 240
    .line 241
    .line 242
    iput-object p2, p0, Lorg/apache/tika/mime/MimeTypesReader;->current:Lorg/apache/tika/mime/MimeTypesReader$ClauseRecord;

    .line 243
    .line 244
    goto :goto_2

    .line 245
    :cond_6
    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    const-string p2, "offset"

    .line 250
    .line 251
    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    const-string p2, "value"

    .line 256
    .line 257
    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    const-string p2, "mask"

    .line 262
    .line 263
    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v5

    .line 267
    if-nez p1, :cond_7

    .line 268
    .line 269
    const-string p1, "string"

    .line 270
    .line 271
    :cond_7
    move-object v2, p1

    .line 272
    new-instance p1, Lorg/apache/tika/mime/MimeTypesReader$ClauseRecord;

    .line 273
    .line 274
    new-instance p2, Lorg/apache/tika/mime/MagicMatch;

    .line 275
    .line 276
    iget-object p3, p0, Lorg/apache/tika/mime/MimeTypesReader;->type:Lorg/apache/tika/mime/MimeType;

    .line 277
    .line 278
    invoke-virtual {p3}, Lorg/apache/tika/mime/MimeType;->getType()Lorg/apache/tika/mime/MediaType;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    move-object v0, p2

    .line 283
    invoke-direct/range {v0 .. v5}, Lorg/apache/tika/mime/MagicMatch;-><init>(Lorg/apache/tika/mime/MediaType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    invoke-direct {p1, p0, p2}, Lorg/apache/tika/mime/MimeTypesReader$ClauseRecord;-><init>(Lorg/apache/tika/mime/MimeTypesReader;Lorg/apache/tika/mime/Clause;)V

    .line 287
    .line 288
    .line 289
    iput-object p1, p0, Lorg/apache/tika/mime/MimeTypesReader;->current:Lorg/apache/tika/mime/MimeTypesReader$ClauseRecord;

    .line 290
    .line 291
    goto :goto_2

    .line 292
    :cond_8
    const-string p1, "magic"

    .line 293
    .line 294
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result p1

    .line 298
    if-eqz p1, :cond_b

    .line 299
    .line 300
    const-string p1, "priority"

    .line 301
    .line 302
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    if-eqz p1, :cond_9

    .line 307
    .line 308
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 309
    .line 310
    .line 311
    move-result p2

    .line 312
    if-lez p2, :cond_9

    .line 313
    .line 314
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 315
    .line 316
    .line 317
    move-result p1

    .line 318
    iput p1, p0, Lorg/apache/tika/mime/MimeTypesReader;->priority:I

    .line 319
    .line 320
    goto :goto_0

    .line 321
    :cond_9
    const/16 p1, 0x32

    .line 322
    .line 323
    iput p1, p0, Lorg/apache/tika/mime/MimeTypesReader;->priority:I

    .line 324
    .line 325
    :goto_0
    new-instance p1, Lorg/apache/tika/mime/MimeTypesReader$ClauseRecord;

    .line 326
    .line 327
    const/4 p2, 0x0

    .line 328
    invoke-direct {p1, p0, p2}, Lorg/apache/tika/mime/MimeTypesReader$ClauseRecord;-><init>(Lorg/apache/tika/mime/MimeTypesReader;Lorg/apache/tika/mime/Clause;)V

    .line 329
    .line 330
    .line 331
    iput-object p1, p0, Lorg/apache/tika/mime/MimeTypesReader;->current:Lorg/apache/tika/mime/MimeTypesReader$ClauseRecord;

    .line 332
    .line 333
    goto :goto_2

    .line 334
    :cond_a
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 335
    .line 336
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    .line 338
    .line 339
    iput-object p1, p0, Lorg/apache/tika/mime/MimeTypesReader;->characters:Ljava/lang/StringBuilder;

    .line 340
    .line 341
    :cond_b
    :goto_2
    return-void
.end method

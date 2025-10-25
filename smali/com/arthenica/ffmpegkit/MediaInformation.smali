.class public Lcom/arthenica/ffmpegkit/MediaInformation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KEY_BIT_RATE:Ljava/lang/String; = "bit_rate"

.field public static final KEY_DURATION:Ljava/lang/String; = "duration"

.field public static final KEY_FILENAME:Ljava/lang/String; = "filename"

.field public static final KEY_FORMAT:Ljava/lang/String; = "format_name"

.field public static final KEY_FORMAT_LONG:Ljava/lang/String; = "format_long_name"

.field public static final KEY_FORMAT_PROPERTIES:Ljava/lang/String; = "format"

.field public static final KEY_SIZE:Ljava/lang/String; = "size"

.field public static final KEY_START_TIME:Ljava/lang/String; = "start_time"

.field public static final KEY_TAGS:Ljava/lang/String; = "tags"


# instance fields
.field private final chapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/arthenica/ffmpegkit/Chapter;",
            ">;"
        }
    .end annotation
.end field

.field private final jsonObject:Lorg/json/JSONObject;

.field private final streams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/arthenica/ffmpegkit/StreamInformation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Lcom/arthenica/ffmpegkit/StreamInformation;",
            ">;",
            "Ljava/util/List<",
            "Lcom/arthenica/ffmpegkit/Chapter;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/arthenica/ffmpegkit/MediaInformation;->jsonObject:Lorg/json/JSONObject;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/arthenica/ffmpegkit/MediaInformation;->streams:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/arthenica/ffmpegkit/MediaInformation;->chapters:Ljava/util/List;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getAllProperties()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/MediaInformation;->jsonObject:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBitrate()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "bit_rate"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/arthenica/ffmpegkit/MediaInformation;->getStringFormatProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getChapters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/arthenica/ffmpegkit/Chapter;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/MediaInformation;->chapters:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "duration"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/arthenica/ffmpegkit/MediaInformation;->getStringFormatProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "filename"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/arthenica/ffmpegkit/MediaInformation;->getStringFormatProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "format_name"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/arthenica/ffmpegkit/MediaInformation;->getStringFormatProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getFormatProperties()Lorg/json/JSONObject;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/MediaInformation;->jsonObject:Lorg/json/JSONObject;

    .line 2
    .line 3
    const-string v1, "format"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getFormatProperty(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/MediaInformation;->getFormatProperties()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public getLongFormat()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "format_long_name"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/arthenica/ffmpegkit/MediaInformation;->getStringFormatProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getNumberFormatProperty(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/MediaInformation;->getFormatProperties()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :cond_1
    return-object v1
.end method

.method public getNumberProperty(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/MediaInformation;->getAllProperties()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :cond_1
    return-object v1
.end method

.method public getProperty(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/MediaInformation;->getAllProperties()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "size"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/arthenica/ffmpegkit/MediaInformation;->getStringFormatProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "start_time"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/arthenica/ffmpegkit/MediaInformation;->getStringFormatProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getStreams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/arthenica/ffmpegkit/StreamInformation;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/MediaInformation;->streams:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStringFormatProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/MediaInformation;->getFormatProperties()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_1
    return-object v1
.end method

.method public getStringProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/MediaInformation;->getAllProperties()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_1
    return-object v1
.end method

.method public getTags()Lorg/json/JSONObject;
    .locals 1

    .line 1
    const-string v0, "tags"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/arthenica/ffmpegkit/MediaInformation;->getFormatProperty(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.class public Lcom/arthenica/ffmpegkit/Chapter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KEY_END:Ljava/lang/String; = "end"

.field public static final KEY_END_TIME:Ljava/lang/String; = "end_time"

.field public static final KEY_ID:Ljava/lang/String; = "id"

.field public static final KEY_START:Ljava/lang/String; = "start"

.field public static final KEY_START_TIME:Ljava/lang/String; = "start_time"

.field public static final KEY_TAGS:Ljava/lang/String; = "tags"

.field public static final KEY_TIME_BASE:Ljava/lang/String; = "time_base"


# instance fields
.field private final jsonObject:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/arthenica/ffmpegkit/Chapter;->jsonObject:Lorg/json/JSONObject;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getAllProperties()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/Chapter;->jsonObject:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEnd()Ljava/lang/Long;
    .locals 1

    .line 1
    const-string v0, "end"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/arthenica/ffmpegkit/Chapter;->getNumberProperty(Ljava/lang/String;)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "end_time"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/arthenica/ffmpegkit/Chapter;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/arthenica/ffmpegkit/Chapter;->getNumberProperty(Ljava/lang/String;)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getNumberProperty(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/Chapter;->getAllProperties()Lorg/json/JSONObject;

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
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/Chapter;->getAllProperties()Lorg/json/JSONObject;

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

.method public getStart()Ljava/lang/Long;
    .locals 1

    .line 1
    const-string v0, "start"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/arthenica/ffmpegkit/Chapter;->getNumberProperty(Ljava/lang/String;)Ljava/lang/Long;

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
    invoke-virtual {p0, v0}, Lcom/arthenica/ffmpegkit/Chapter;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getStringProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/Chapter;->getAllProperties()Lorg/json/JSONObject;

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
    invoke-virtual {p0, v0}, Lcom/arthenica/ffmpegkit/Chapter;->getProperty(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getTimeBase()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "time_base"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/arthenica/ffmpegkit/Chapter;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

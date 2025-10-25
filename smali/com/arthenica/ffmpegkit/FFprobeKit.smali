.class public Lcom/arthenica/ffmpegkit/FFprobeKit;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static defaultGetMediaInformationCommandArguments(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10

    .line 1
    const-string v0, "-v"

    .line 2
    .line 3
    const-string v1, "error"

    .line 4
    .line 5
    const-string v2, "-hide_banner"

    .line 6
    .line 7
    const-string v3, "-print_format"

    .line 8
    .line 9
    const-string v4, "json"

    .line 10
    .line 11
    const-string v5, "-show_format"

    .line 12
    .line 13
    const-string v6, "-show_streams"

    .line 14
    .line 15
    const-string v7, "-show_chapters"

    .line 16
    .line 17
    const-string v8, "-i"

    .line 18
    .line 19
    move-object v9, p0

    .line 20
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public static execute(Ljava/lang/String;)Lcom/arthenica/ffmpegkit/FFprobeSession;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->parseArguments(Ljava/lang/String;)[Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFprobeKit;->executeWithArguments([Ljava/lang/String;)Lcom/arthenica/ffmpegkit/FFprobeSession;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static executeAsync(Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;)Lcom/arthenica/ffmpegkit/FFprobeSession;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->parseArguments(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/arthenica/ffmpegkit/FFprobeKit;->executeWithArgumentsAsync([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;)Lcom/arthenica/ffmpegkit/FFprobeSession;

    move-result-object p0

    return-object p0
.end method

.method public static executeAsync(Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;)Lcom/arthenica/ffmpegkit/FFprobeSession;
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->parseArguments(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/arthenica/ffmpegkit/FFprobeKit;->executeWithArgumentsAsync([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;)Lcom/arthenica/ffmpegkit/FFprobeSession;

    move-result-object p0

    return-object p0
.end method

.method public static executeAsync(Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;Ljava/util/concurrent/ExecutorService;)Lcom/arthenica/ffmpegkit/FFprobeSession;
    .locals 0

    .line 5
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->parseArguments(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/arthenica/ffmpegkit/FFprobeSession;->create([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;)Lcom/arthenica/ffmpegkit/FFprobeSession;

    move-result-object p0

    .line 6
    invoke-static {p0, p3}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncFFprobeExecute(Lcom/arthenica/ffmpegkit/FFprobeSession;Ljava/util/concurrent/ExecutorService;)V

    return-object p0
.end method

.method public static executeAsync(Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;Ljava/util/concurrent/ExecutorService;)Lcom/arthenica/ffmpegkit/FFprobeSession;
    .locals 0

    .line 3
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->parseArguments(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/arthenica/ffmpegkit/FFprobeSession;->create([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;)Lcom/arthenica/ffmpegkit/FFprobeSession;

    move-result-object p0

    .line 4
    invoke-static {p0, p2}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncFFprobeExecute(Lcom/arthenica/ffmpegkit/FFprobeSession;Ljava/util/concurrent/ExecutorService;)V

    return-object p0
.end method

.method public static executeWithArguments([Ljava/lang/String;)Lcom/arthenica/ffmpegkit/FFprobeSession;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFprobeSession;->create([Ljava/lang/String;)Lcom/arthenica/ffmpegkit/FFprobeSession;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->ffprobeExecute(Lcom/arthenica/ffmpegkit/FFprobeSession;)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public static executeWithArgumentsAsync([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;)Lcom/arthenica/ffmpegkit/FFprobeSession;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/arthenica/ffmpegkit/FFprobeSession;->create([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;)Lcom/arthenica/ffmpegkit/FFprobeSession;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncFFprobeExecute(Lcom/arthenica/ffmpegkit/FFprobeSession;)V

    return-object p0
.end method

.method public static executeWithArgumentsAsync([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;)Lcom/arthenica/ffmpegkit/FFprobeSession;
    .locals 0

    .line 3
    invoke-static {p0, p1, p2}, Lcom/arthenica/ffmpegkit/FFprobeSession;->create([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;)Lcom/arthenica/ffmpegkit/FFprobeSession;

    move-result-object p0

    .line 4
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncFFprobeExecute(Lcom/arthenica/ffmpegkit/FFprobeSession;)V

    return-object p0
.end method

.method public static executeWithArgumentsAsync([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;Ljava/util/concurrent/ExecutorService;)Lcom/arthenica/ffmpegkit/FFprobeSession;
    .locals 0

    .line 7
    invoke-static {p0, p1, p2}, Lcom/arthenica/ffmpegkit/FFprobeSession;->create([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;)Lcom/arthenica/ffmpegkit/FFprobeSession;

    move-result-object p0

    .line 8
    invoke-static {p0, p3}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncFFprobeExecute(Lcom/arthenica/ffmpegkit/FFprobeSession;Ljava/util/concurrent/ExecutorService;)V

    return-object p0
.end method

.method public static executeWithArgumentsAsync([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;Ljava/util/concurrent/ExecutorService;)Lcom/arthenica/ffmpegkit/FFprobeSession;
    .locals 0

    .line 5
    invoke-static {p0, p1}, Lcom/arthenica/ffmpegkit/FFprobeSession;->create([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;)Lcom/arthenica/ffmpegkit/FFprobeSession;

    move-result-object p0

    .line 6
    invoke-static {p0, p2}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncFFprobeExecute(Lcom/arthenica/ffmpegkit/FFprobeSession;Ljava/util/concurrent/ExecutorService;)V

    return-object p0
.end method

.method public static getMediaInformation(Ljava/lang/String;)Lcom/arthenica/ffmpegkit/MediaInformationSession;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFprobeKit;->defaultGetMediaInformationCommandArguments(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/arthenica/ffmpegkit/MediaInformationSession;->create([Ljava/lang/String;)Lcom/arthenica/ffmpegkit/MediaInformationSession;

    move-result-object p0

    const/16 v0, 0x1388

    .line 2
    invoke-static {p0, v0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getMediaInformationExecute(Lcom/arthenica/ffmpegkit/MediaInformationSession;I)V

    return-object p0
.end method

.method public static getMediaInformation(Ljava/lang/String;I)Lcom/arthenica/ffmpegkit/MediaInformationSession;
    .locals 0

    .line 3
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFprobeKit;->defaultGetMediaInformationCommandArguments(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/arthenica/ffmpegkit/MediaInformationSession;->create([Ljava/lang/String;)Lcom/arthenica/ffmpegkit/MediaInformationSession;

    move-result-object p0

    .line 4
    invoke-static {p0, p1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getMediaInformationExecute(Lcom/arthenica/ffmpegkit/MediaInformationSession;I)V

    return-object p0
.end method

.method public static getMediaInformationAsync(Ljava/lang/String;Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;)Lcom/arthenica/ffmpegkit/MediaInformationSession;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFprobeKit;->defaultGetMediaInformationCommandArguments(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/arthenica/ffmpegkit/MediaInformationSession;->create([Ljava/lang/String;Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;)Lcom/arthenica/ffmpegkit/MediaInformationSession;

    move-result-object p0

    const/16 p1, 0x1388

    .line 2
    invoke-static {p0, p1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncGetMediaInformationExecute(Lcom/arthenica/ffmpegkit/MediaInformationSession;I)V

    return-object p0
.end method

.method public static getMediaInformationAsync(Ljava/lang/String;Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;I)Lcom/arthenica/ffmpegkit/MediaInformationSession;
    .locals 0

    .line 3
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFprobeKit;->defaultGetMediaInformationCommandArguments(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/arthenica/ffmpegkit/MediaInformationSession;->create([Ljava/lang/String;Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;)Lcom/arthenica/ffmpegkit/MediaInformationSession;

    move-result-object p0

    .line 4
    invoke-static {p0, p3}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncGetMediaInformationExecute(Lcom/arthenica/ffmpegkit/MediaInformationSession;I)V

    return-object p0
.end method

.method public static getMediaInformationAsync(Ljava/lang/String;Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;Ljava/util/concurrent/ExecutorService;I)Lcom/arthenica/ffmpegkit/MediaInformationSession;
    .locals 0

    .line 7
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFprobeKit;->defaultGetMediaInformationCommandArguments(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/arthenica/ffmpegkit/MediaInformationSession;->create([Ljava/lang/String;Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;)Lcom/arthenica/ffmpegkit/MediaInformationSession;

    move-result-object p0

    .line 8
    invoke-static {p0, p3, p4}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncGetMediaInformationExecute(Lcom/arthenica/ffmpegkit/MediaInformationSession;Ljava/util/concurrent/ExecutorService;I)V

    return-object p0
.end method

.method public static getMediaInformationAsync(Ljava/lang/String;Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;Ljava/util/concurrent/ExecutorService;)Lcom/arthenica/ffmpegkit/MediaInformationSession;
    .locals 0

    .line 5
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFprobeKit;->defaultGetMediaInformationCommandArguments(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/arthenica/ffmpegkit/MediaInformationSession;->create([Ljava/lang/String;Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;)Lcom/arthenica/ffmpegkit/MediaInformationSession;

    move-result-object p0

    const/16 p1, 0x1388

    .line 6
    invoke-static {p0, p2, p1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncGetMediaInformationExecute(Lcom/arthenica/ffmpegkit/MediaInformationSession;Ljava/util/concurrent/ExecutorService;I)V

    return-object p0
.end method

.method public static getMediaInformationFromCommand(Ljava/lang/String;)Lcom/arthenica/ffmpegkit/MediaInformationSession;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->parseArguments(Ljava/lang/String;)[Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/MediaInformationSession;->create([Ljava/lang/String;)Lcom/arthenica/ffmpegkit/MediaInformationSession;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/16 v0, 0x1388

    .line 10
    .line 11
    invoke-static {p0, v0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getMediaInformationExecute(Lcom/arthenica/ffmpegkit/MediaInformationSession;I)V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method private static getMediaInformationFromCommandArgumentsAsync([Ljava/lang/String;Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;I)Lcom/arthenica/ffmpegkit/MediaInformationSession;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/arthenica/ffmpegkit/MediaInformationSession;->create([Ljava/lang/String;Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;)Lcom/arthenica/ffmpegkit/MediaInformationSession;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p3}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncGetMediaInformationExecute(Lcom/arthenica/ffmpegkit/MediaInformationSession;I)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public static getMediaInformationFromCommandAsync(Ljava/lang/String;Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;I)Lcom/arthenica/ffmpegkit/MediaInformationSession;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->parseArguments(Ljava/lang/String;)[Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p1, p2, p3}, Lcom/arthenica/ffmpegkit/FFprobeKit;->getMediaInformationFromCommandArgumentsAsync([Ljava/lang/String;Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;I)Lcom/arthenica/ffmpegkit/MediaInformationSession;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static listFFprobeSessions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/arthenica/ffmpegkit/FFprobeSession;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getFFprobeSessions()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static listMediaInformationSessions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/arthenica/ffmpegkit/MediaInformationSession;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getMediaInformationSessions()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

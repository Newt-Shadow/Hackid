.class public final Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lio/appmetrica/analytics/coreapi/internal/model/AppVersionInfo;

.field private final b:Ljava/lang/String;

.field private final c:Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;

.field private final d:Lio/appmetrica/analytics/coreapi/internal/model/SdkInfo;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/util/List;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/coreapi/internal/model/AppVersionInfo;Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;Lio/appmetrica/analytics/coreapi/internal/model/SdkInfo;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/coreapi/internal/model/AppVersionInfo;",
            "Ljava/lang/String;",
            "Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;",
            "Lio/appmetrica/analytics/coreapi/internal/model/SdkInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->a:Lio/appmetrica/analytics/coreapi/internal/model/AppVersionInfo;

    .line 5
    .line 6
    iput-object p2, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->c:Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;

    .line 9
    .line 10
    iput-object p4, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->d:Lio/appmetrica/analytics/coreapi/internal/model/SdkInfo;

    .line 11
    .line 12
    iput-object p5, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->e:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->f:Ljava/util/List;

    .line 15
    .line 16
    return-void
.end method

.method public static synthetic copy$default(Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;Lio/appmetrica/analytics/coreapi/internal/model/AppVersionInfo;Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;Lio/appmetrica/analytics/coreapi/internal/model/SdkInfo;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->a:Lio/appmetrica/analytics/coreapi/internal/model/AppVersionInfo;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->b:Ljava/lang/String;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->c:Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->d:Lio/appmetrica/analytics/coreapi/internal/model/SdkInfo;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->e:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->f:Ljava/util/List;

    :cond_5
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->copy(Lio/appmetrica/analytics/coreapi/internal/model/AppVersionInfo;Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;Lio/appmetrica/analytics/coreapi/internal/model/SdkInfo;Ljava/lang/String;Ljava/util/List;)Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lio/appmetrica/analytics/coreapi/internal/model/AppVersionInfo;
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->a:Lio/appmetrica/analytics/coreapi/internal/model/AppVersionInfo;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->c:Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;

    return-object v0
.end method

.method public final component4()Lio/appmetrica/analytics/coreapi/internal/model/SdkInfo;
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->d:Lio/appmetrica/analytics/coreapi/internal/model/SdkInfo;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->f:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Lio/appmetrica/analytics/coreapi/internal/model/AppVersionInfo;Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;Lio/appmetrica/analytics/coreapi/internal/model/SdkInfo;Ljava/lang/String;Ljava/util/List;)Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/coreapi/internal/model/AppVersionInfo;",
            "Ljava/lang/String;",
            "Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;",
            "Lio/appmetrica/analytics/coreapi/internal/model/SdkInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;"
        }
    .end annotation

    new-instance v7, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;-><init>(Lio/appmetrica/analytics/coreapi/internal/model/AppVersionInfo;Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;Lio/appmetrica/analytics/coreapi/internal/model/SdkInfo;Ljava/lang/String;Ljava/util/List;)V

    return-object v7
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;

    iget-object v1, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->a:Lio/appmetrica/analytics/coreapi/internal/model/AppVersionInfo;

    iget-object v3, p1, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->a:Lio/appmetrica/analytics/coreapi/internal/model/AppVersionInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->b:Ljava/lang/String;

    iget-object v3, p1, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->c:Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;

    iget-object v3, p1, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->c:Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->d:Lio/appmetrica/analytics/coreapi/internal/model/SdkInfo;

    iget-object v3, p1, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->d:Lio/appmetrica/analytics/coreapi/internal/model/SdkInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->e:Ljava/lang/String;

    iget-object v3, p1, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->f:Ljava/util/List;

    iget-object p1, p1, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->f:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getAppFramework()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAppVersionInfo()Lio/appmetrica/analytics/coreapi/internal/model/AppVersionInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->a:Lio/appmetrica/analytics/coreapi/internal/model/AppVersionInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDeviceType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLocales()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->f:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getScreenInfo()Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->c:Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSdkInfo()Lio/appmetrica/analytics/coreapi/internal/model/SdkInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->d:Lio/appmetrica/analytics/coreapi/internal/model/SdkInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->a:Lio/appmetrica/analytics/coreapi/internal/model/AppVersionInfo;

    invoke-virtual {v0}, Lio/appmetrica/analytics/coreapi/internal/model/AppVersionInfo;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->c:Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;

    invoke-virtual {v0}, Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->d:Lio/appmetrica/analytics/coreapi/internal/model/SdkInfo;

    invoke-virtual {v1}, Lio/appmetrica/analytics/coreapi/internal/model/SdkInfo;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->f:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SdkEnvironment(appVersionInfo="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->a:Lio/appmetrica/analytics/coreapi/internal/model/AppVersionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", appFramework="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", screenInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->c:Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sdkInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->d:Lio/appmetrica/analytics/coreapi/internal/model/SdkInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", locales="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobSettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pichillilorenzo/flutter_inappwebview_android/ISettings;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pichillilorenzo/flutter_inappwebview_android/ISettings<",
        "Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobController;",
        ">;"
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "PrintJobSettings"


# instance fields
.field public colorMode:Ljava/lang/Integer;

.field public duplexMode:Ljava/lang/Integer;

.field public handledByClient:Ljava/lang/Boolean;

.field public jobName:Ljava/lang/String;

.field public mediaSize:Lcom/pichillilorenzo/flutter_inappwebview_android/types/MediaSizeExt;

.field public orientation:Ljava/lang/Integer;

.field public resolution:Lcom/pichillilorenzo/flutter_inappwebview_android/types/ResolutionExt;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobSettings;->handledByClient:Ljava/lang/Boolean;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getRealSettings(Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobController;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobController;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobSettings;->toMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getRealSettings(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0

    .line 1
    check-cast p1, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobController;

    invoke-virtual {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobSettings;->getRealSettings(Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobController;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parse(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview_android/ISettings;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobSettings;->parse(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobSettings;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobSettings;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobSettings;"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "mediaSize"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x6

    goto :goto_1

    :sswitch_1
    const-string v2, "colorMode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x5

    goto :goto_1

    :sswitch_2
    const-string v2, "handledByClient"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_3
    const-string v2, "jobName"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_4
    const-string v2, "orientation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_5
    const-string v2, "duplexMode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_6
    const-string v2, "resolution"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_1

    :cond_7
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 6
    :pswitch_0
    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MediaSizeExt;->fromMap(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview_android/types/MediaSizeExt;

    move-result-object v0

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobSettings;->mediaSize:Lcom/pichillilorenzo/flutter_inappwebview_android/types/MediaSizeExt;

    goto :goto_0

    .line 7
    :pswitch_1
    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobSettings;->colorMode:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 8
    :pswitch_2
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobSettings;->handledByClient:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 9
    :pswitch_3
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobSettings;->jobName:Ljava/lang/String;

    goto/16 :goto_0

    .line 10
    :pswitch_4
    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobSettings;->orientation:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 11
    :pswitch_5
    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobSettings;->duplexMode:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 12
    :pswitch_6
    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ResolutionExt;->fromMap(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview_android/types/ResolutionExt;

    move-result-object v0

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobSettings;->resolution:Lcom/pichillilorenzo/flutter_inappwebview_android/types/ResolutionExt;

    goto/16 :goto_0

    :cond_8
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5f5e8754 -> :sswitch_6
        -0x594b4a7d -> :sswitch_5
        -0x55cd0a30 -> :sswitch_4
        -0x55b79c18 -> :sswitch_3
        -0xe9a31a2 -> :sswitch_2
        0x760f73a6 -> :sswitch_1
        0x7f943205 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "handledByClient"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobSettings;->handledByClient:Ljava/lang/Boolean;

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const-string v1, "jobName"

    .line 14
    .line 15
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobSettings;->jobName:Ljava/lang/String;

    .line 16
    .line 17
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    const-string v1, "orientation"

    .line 21
    .line 22
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobSettings;->orientation:Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobSettings;->mediaSize:Lcom/pichillilorenzo/flutter_inappwebview_android/types/MediaSizeExt;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MediaSizeExt;->toMap()Ljava/util/Map;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move-object v1, v2

    .line 38
    :goto_0
    const-string v3, "mediaSize"

    .line 39
    .line 40
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    const-string v1, "colorMode"

    .line 44
    .line 45
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobSettings;->colorMode:Ljava/lang/Integer;

    .line 46
    .line 47
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    const-string v1, "duplexMode"

    .line 51
    .line 52
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobSettings;->duplexMode:Ljava/lang/Integer;

    .line 53
    .line 54
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobSettings;->resolution:Lcom/pichillilorenzo/flutter_inappwebview_android/types/ResolutionExt;

    .line 58
    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ResolutionExt;->toMap()Ljava/util/Map;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    :cond_1
    const-string v1, "resolution"

    .line 66
    .line 67
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    return-object v0
.end method

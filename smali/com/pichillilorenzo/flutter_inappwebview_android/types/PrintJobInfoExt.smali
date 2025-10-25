.class public Lcom/pichillilorenzo/flutter_inappwebview_android/types/PrintJobInfoExt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private attributes:Lcom/pichillilorenzo/flutter_inappwebview_android/types/PrintAttributesExt;

.field private copies:I

.field private creationTime:J

.field private label:Ljava/lang/String;

.field private numberOfPages:Ljava/lang/Integer;

.field private printerId:Ljava/lang/String;

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromPrintJobInfo(Landroid/print/PrintJobInfo;)Lcom/pichillilorenzo/flutter_inappwebview_android/types/PrintJobInfoExt;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PrintJobInfoExt;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PrintJobInfoExt;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/print/PrintJobInfo;->getState()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    iput v2, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PrintJobInfoExt;->state:I

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/print/PrintJobInfo;->getCopies()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    iput v2, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PrintJobInfoExt;->copies:I

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/print/PrintJobInfo;->getPages()[Landroid/print/PageRange;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/print/PrintJobInfo;->getPages()[Landroid/print/PageRange;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    array-length v2, v2

    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object v2, v0

    .line 39
    :goto_0
    iput-object v2, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PrintJobInfoExt;->numberOfPages:Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/print/PrintJobInfo;->getCreationTime()J

    .line 42
    .line 43
    .line 44
    move-result-wide v2

    .line 45
    iput-wide v2, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PrintJobInfoExt;->creationTime:J

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    iput-object v2, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PrintJobInfoExt;->label:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/print/PrintJobInfo;->getPrinterId()Landroid/print/PrinterId;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/print/PrintJobInfo;->getPrinterId()Landroid/print/PrinterId;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/print/PrinterId;->getLocalId()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    :cond_2
    iput-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PrintJobInfoExt;->printerId:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/print/PrintJobInfo;->getAttributes()Landroid/print/PrintAttributes;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PrintAttributesExt;->fromPrintAttributes(Landroid/print/PrintAttributes;)Lcom/pichillilorenzo/flutter_inappwebview_android/types/PrintAttributesExt;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    iput-object p0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PrintJobInfoExt;->attributes:Lcom/pichillilorenzo/flutter_inappwebview_android/types/PrintAttributesExt;

    .line 78
    .line 79
    return-object v1
.end method


# virtual methods
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
    iget v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PrintJobInfoExt;->state:I

    .line 7
    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "state"

    .line 13
    .line 14
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    iget v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PrintJobInfoExt;->copies:I

    .line 18
    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "copies"

    .line 24
    .line 25
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    const-string v1, "numberOfPages"

    .line 29
    .line 30
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PrintJobInfoExt;->numberOfPages:Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    iget-wide v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PrintJobInfoExt;->creationTime:J

    .line 36
    .line 37
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v2, "creationTime"

    .line 42
    .line 43
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    const-string v1, "label"

    .line 47
    .line 48
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PrintJobInfoExt;->label:Ljava/lang/String;

    .line 49
    .line 50
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    new-instance v1, Ljava/util/HashMap;

    .line 54
    .line 55
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v2, "id"

    .line 59
    .line 60
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PrintJobInfoExt;->printerId:Ljava/lang/String;

    .line 61
    .line 62
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    const-string v2, "printer"

    .line 66
    .line 67
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PrintJobInfoExt;->attributes:Lcom/pichillilorenzo/flutter_inappwebview_android/types/PrintAttributesExt;

    .line 71
    .line 72
    if-eqz v1, :cond_0

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PrintAttributesExt;->toMap()Ljava/util/Map;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    goto :goto_0

    .line 79
    :cond_0
    const/4 v1, 0x0

    .line 80
    :goto_0
    const-string v2, "attributes"

    .line 81
    .line 82
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    return-object v0
.end method

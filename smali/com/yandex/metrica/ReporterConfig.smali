.class public Lcom/yandex/metrica/ReporterConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/ReporterConfig$Builder;
    }
.end annotation


# instance fields
.field public final apiKey:Ljava/lang/String;

.field public final logs:Ljava/lang/Boolean;

.field public final maxReportsInDatabaseCount:Ljava/lang/Integer;

.field public final sessionTimeout:Ljava/lang/Integer;

.field public final statisticsSending:Ljava/lang/Boolean;

.field public final userProfileID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/ReporterConfig$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/yandex/metrica/ReporterConfig$Builder;->a(Lcom/yandex/metrica/ReporterConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/ReporterConfig;->apiKey:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Lcom/yandex/metrica/ReporterConfig$Builder;->b(Lcom/yandex/metrica/ReporterConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/ReporterConfig;->sessionTimeout:Ljava/lang/Integer;

    .line 4
    invoke-static {p1}, Lcom/yandex/metrica/ReporterConfig$Builder;->c(Lcom/yandex/metrica/ReporterConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/ReporterConfig;->logs:Ljava/lang/Boolean;

    .line 5
    invoke-static {p1}, Lcom/yandex/metrica/ReporterConfig$Builder;->d(Lcom/yandex/metrica/ReporterConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/ReporterConfig;->statisticsSending:Ljava/lang/Boolean;

    .line 6
    invoke-static {p1}, Lcom/yandex/metrica/ReporterConfig$Builder;->e(Lcom/yandex/metrica/ReporterConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/ReporterConfig;->maxReportsInDatabaseCount:Ljava/lang/Integer;

    .line 7
    invoke-static {p1}, Lcom/yandex/metrica/ReporterConfig$Builder;->f(Lcom/yandex/metrica/ReporterConfig$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/ReporterConfig;->userProfileID:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/ReporterConfig;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iget-object v0, p1, Lcom/yandex/metrica/ReporterConfig;->apiKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/yandex/metrica/ReporterConfig;->apiKey:Ljava/lang/String;

    .line 10
    iget-object v0, p1, Lcom/yandex/metrica/ReporterConfig;->sessionTimeout:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/yandex/metrica/ReporterConfig;->sessionTimeout:Ljava/lang/Integer;

    .line 11
    iget-object v0, p1, Lcom/yandex/metrica/ReporterConfig;->logs:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/yandex/metrica/ReporterConfig;->logs:Ljava/lang/Boolean;

    .line 12
    iget-object v0, p1, Lcom/yandex/metrica/ReporterConfig;->statisticsSending:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/yandex/metrica/ReporterConfig;->statisticsSending:Ljava/lang/Boolean;

    .line 13
    iget-object v0, p1, Lcom/yandex/metrica/ReporterConfig;->maxReportsInDatabaseCount:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/yandex/metrica/ReporterConfig;->maxReportsInDatabaseCount:Ljava/lang/Integer;

    .line 14
    iget-object p1, p1, Lcom/yandex/metrica/ReporterConfig;->userProfileID:Ljava/lang/String;

    iput-object p1, p0, Lcom/yandex/metrica/ReporterConfig;->userProfileID:Ljava/lang/String;

    return-void
.end method

.method public static createBuilderFromConfig(Lcom/yandex/metrica/ReporterConfig;)Lcom/yandex/metrica/ReporterConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/ReporterConfig;->apiKey:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yandex/metrica/ReporterConfig;->newConfigBuilder(Ljava/lang/String;)Lcom/yandex/metrica/ReporterConfig$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/yandex/metrica/ReporterConfig;->sessionTimeout:Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/yandex/metrica/ReporterConfig;->sessionTimeout:Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/ReporterConfig$Builder;->withSessionTimeout(I)Lcom/yandex/metrica/ReporterConfig$Builder;

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/ReporterConfig;->logs:Ljava/lang/Boolean;

    .line 25
    .line 26
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    iget-object v1, p0, Lcom/yandex/metrica/ReporterConfig;->logs:Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/yandex/metrica/ReporterConfig$Builder;->withLogs()Lcom/yandex/metrica/ReporterConfig$Builder;

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object v1, p0, Lcom/yandex/metrica/ReporterConfig;->statisticsSending:Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    iget-object v1, p0, Lcom/yandex/metrica/ReporterConfig;->statisticsSending:Ljava/lang/Boolean;

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/ReporterConfig$Builder;->withStatisticsSending(Z)Lcom/yandex/metrica/ReporterConfig$Builder;

    .line 58
    .line 59
    .line 60
    :cond_2
    iget-object v1, p0, Lcom/yandex/metrica/ReporterConfig;->maxReportsInDatabaseCount:Ljava/lang/Integer;

    .line 61
    .line 62
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    iget-object v1, p0, Lcom/yandex/metrica/ReporterConfig;->maxReportsInDatabaseCount:Ljava/lang/Integer;

    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/ReporterConfig$Builder;->withMaxReportsInDatabaseCount(I)Lcom/yandex/metrica/ReporterConfig$Builder;

    .line 75
    .line 76
    .line 77
    :cond_3
    iget-object v1, p0, Lcom/yandex/metrica/ReporterConfig;->userProfileID:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_4

    .line 84
    .line 85
    iget-object p0, p0, Lcom/yandex/metrica/ReporterConfig;->userProfileID:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v0, p0}, Lcom/yandex/metrica/ReporterConfig$Builder;->withUserProfileID(Ljava/lang/String;)Lcom/yandex/metrica/ReporterConfig$Builder;

    .line 88
    .line 89
    .line 90
    :cond_4
    return-object v0
.end method

.method public static newConfigBuilder(Ljava/lang/String;)Lcom/yandex/metrica/ReporterConfig$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/ReporterConfig$Builder;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/yandex/metrica/ReporterConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

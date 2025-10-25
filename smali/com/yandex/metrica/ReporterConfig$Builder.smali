.class public Lcom/yandex/metrica/ReporterConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/ReporterConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final g:Lcom/yandex/metrica/impl/ob/Kn;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/Integer;

.field private c:Ljava/lang/Boolean;

.field private d:Ljava/lang/Boolean;

.field private e:Ljava/lang/Integer;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Hn;

    .line 2
    .line 3
    new-instance v1, Lcom/yandex/metrica/impl/ob/Ln;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/Ln;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;-><init>(Lcom/yandex/metrica/impl/ob/Kn;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/yandex/metrica/ReporterConfig$Builder;->g:Lcom/yandex/metrica/impl/ob/Kn;

    .line 12
    .line 13
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/yandex/metrica/ReporterConfig$Builder;->g:Lcom/yandex/metrica/impl/ob/Kn;

    .line 5
    .line 6
    check-cast v0, Lcom/yandex/metrica/impl/ob/Hn;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/yandex/metrica/ReporterConfig$Builder;->a:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/ReporterConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/ReporterConfig$Builder;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/yandex/metrica/ReporterConfig$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/ReporterConfig$Builder;->b:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/yandex/metrica/ReporterConfig$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/ReporterConfig$Builder;->c:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/yandex/metrica/ReporterConfig$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/ReporterConfig$Builder;->d:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/yandex/metrica/ReporterConfig$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/ReporterConfig$Builder;->e:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/yandex/metrica/ReporterConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/ReporterConfig$Builder;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public build()Lcom/yandex/metrica/ReporterConfig;
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/ReporterConfig;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/yandex/metrica/ReporterConfig;-><init>(Lcom/yandex/metrica/ReporterConfig$Builder;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public withLogs()Lcom/yandex/metrica/ReporterConfig$Builder;
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/yandex/metrica/ReporterConfig$Builder;->c:Ljava/lang/Boolean;

    .line 4
    .line 5
    return-object p0
.end method

.method public withMaxReportsInDatabaseCount(I)Lcom/yandex/metrica/ReporterConfig$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/yandex/metrica/ReporterConfig$Builder;->e:Ljava/lang/Integer;

    .line 6
    .line 7
    return-object p0
.end method

.method public withSessionTimeout(I)Lcom/yandex/metrica/ReporterConfig$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/yandex/metrica/ReporterConfig$Builder;->b:Ljava/lang/Integer;

    .line 6
    .line 7
    return-object p0
.end method

.method public withStatisticsSending(Z)Lcom/yandex/metrica/ReporterConfig$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/yandex/metrica/ReporterConfig$Builder;->d:Ljava/lang/Boolean;

    .line 6
    .line 7
    return-object p0
.end method

.method public withUserProfileID(Ljava/lang/String;)Lcom/yandex/metrica/ReporterConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/ReporterConfig$Builder;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

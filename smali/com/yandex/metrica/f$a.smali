.class public Lcom/yandex/metrica/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lcom/yandex/metrica/ReporterConfig$Builder;

.field b:Ljava/lang/Integer;

.field c:Ljava/lang/Integer;

.field d:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/yandex/metrica/f$a;->d:Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/yandex/metrica/ReporterConfig;->newConfigBuilder(Ljava/lang/String;)Lcom/yandex/metrica/ReporterConfig$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/yandex/metrica/f$a;->a:Lcom/yandex/metrica/ReporterConfig$Builder;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public a(I)Lcom/yandex/metrica/f$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/f$a;->a:Lcom/yandex/metrica/ReporterConfig$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/ReporterConfig$Builder;->withMaxReportsInDatabaseCount(I)Lcom/yandex/metrica/ReporterConfig$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public b()Lcom/yandex/metrica/f;
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/f;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/yandex/metrica/f;-><init>(Lcom/yandex/metrica/f$a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.class public final Lcom/yandex/metrica/impl/ob/hb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/gb$b;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/yandex/metrica/impl/ob/gb$b;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/gb$b;-><init>(ZI)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/hb;->a:Lcom/yandex/metrica/impl/ob/gb$b;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/metrica/impl/ob/Uh;)Lcom/yandex/metrica/impl/ob/gb;
    .locals 8

    .line 1
    new-instance v6, Lcom/yandex/metrica/impl/ob/gb;

    .line 2
    .line 3
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/hb;->a:Lcom/yandex/metrica/impl/ob/gb$b;

    .line 4
    .line 5
    sget-object v3, Lmd/c;->a:Lmd/c$a;

    .line 6
    .line 7
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "GlobalServiceLocator.getInstance()"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/F0;->q()Lcom/yandex/metrica/impl/ob/Pm;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "GlobalServiceLocator.get\u2026).serviceExecutorProvider"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Pm;->g()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    const-string v0, "GlobalServiceLocator.get\u2026rovider.supportIOExecutor"

    .line 30
    .line 31
    invoke-static {v4, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v5, Lcom/yandex/metrica/impl/ob/kb;

    .line 35
    .line 36
    new-instance v0, Lcom/yandex/metrica/impl/ob/jb;

    .line 37
    .line 38
    invoke-static {}, Lcom/yandex/metrica/impl/ob/oh;->a()Lcom/yandex/metrica/impl/ob/M0;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v7, "YandexMetricaSelfReportFacade.getReporter()"

    .line 43
    .line 44
    invoke-static {v1, v7}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/jb;-><init>(Lcom/yandex/metrica/impl/ob/Uh;Lcom/yandex/metrica/impl/ob/M0;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {v5, v0, p1}, Lcom/yandex/metrica/impl/ob/kb;-><init>(Lcom/yandex/metrica/impl/ob/jb;Lcom/yandex/metrica/impl/ob/Uh;)V

    .line 51
    .line 52
    .line 53
    move-object v0, v6

    .line 54
    move-object v1, p1

    .line 55
    invoke-direct/range {v0 .. v5}, Lcom/yandex/metrica/impl/ob/gb;-><init>(Lcom/yandex/metrica/impl/ob/Uh;Lcom/yandex/metrica/impl/ob/gb$b;Lmd/c;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Lcom/yandex/metrica/impl/ob/kb;)V

    .line 56
    .line 57
    .line 58
    return-object v6
.end method

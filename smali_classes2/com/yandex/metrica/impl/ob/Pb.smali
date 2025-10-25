.class public abstract Lcom/yandex/metrica/impl/ob/Pb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/yandex/metrica/impl/ob/e9;

.field protected final b:Lcom/yandex/metrica/impl/ob/Cc;

.field protected final c:Lcom/yandex/metrica/impl/ob/G1;

.field private final d:Lcom/yandex/metrica/impl/ob/gc;

.field private final e:Lcom/yandex/metrica/impl/ob/Mb;

.field private final f:Lcom/yandex/metrica/impl/ob/Nb;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/Cc;Lcom/yandex/metrica/impl/ob/e9;Lcom/yandex/metrica/impl/ob/G1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Pb;->b:Lcom/yandex/metrica/impl/ob/Cc;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Pb;->a:Lcom/yandex/metrica/impl/ob/e9;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Pb;->c:Lcom/yandex/metrica/impl/ob/G1;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Pb;->a()Lcom/yandex/metrica/impl/ob/gc;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Pb;->d:Lcom/yandex/metrica/impl/ob/gc;

    .line 15
    .line 16
    new-instance p3, Lcom/yandex/metrica/impl/ob/Mb;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Pb;->c()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-direct {p3, p2, v0}, Lcom/yandex/metrica/impl/ob/Mb;-><init>(Lcom/yandex/metrica/impl/ob/gc;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Pb;->e:Lcom/yandex/metrica/impl/ob/Mb;

    .line 26
    .line 27
    new-instance p2, Lcom/yandex/metrica/impl/ob/Nb;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/Cc;->a:Lcom/yandex/metrica/impl/ob/Sb;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/Sb;->b:Lcom/yandex/metrica/core/api/executors/IHandlerExecutor;

    .line 32
    .line 33
    invoke-direct {p2, p1}, Lcom/yandex/metrica/impl/ob/Nb;-><init>(Lcom/yandex/metrica/core/api/executors/ICommonExecutor;)V

    .line 34
    .line 35
    .line 36
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Pb;->f:Lcom/yandex/metrica/impl/ob/Nb;

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/Pc;Lcom/yandex/metrica/impl/ob/Xb;)Lcom/yandex/metrica/impl/ob/Ec;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/Pc;",
            "Lcom/yandex/metrica/impl/ob/Xb;",
            ")",
            "Lcom/yandex/metrica/impl/ob/Ec<",
            "Lcom/yandex/metrica/impl/ob/Xb;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    .line 1
    new-instance v7, Lcom/yandex/metrica/impl/ob/Ec;

    .line 2
    new-instance v2, Lcom/yandex/metrica/impl/ob/Tc;

    iget-object v1, v0, Lcom/yandex/metrica/impl/ob/Pb;->b:Lcom/yandex/metrica/impl/ob/Cc;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/Cc;->a:Lcom/yandex/metrica/impl/ob/Sb;

    iget-object v9, v1, Lcom/yandex/metrica/impl/ob/Sb;->a:Landroid/content/Context;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/Sb;->b:Lcom/yandex/metrica/core/api/executors/IHandlerExecutor;

    .line 3
    invoke-interface {v1}, Lcom/yandex/metrica/core/api/executors/IHandlerExecutor;->getLooper()Landroid/os/Looper;

    move-result-object v10

    iget-object v1, v0, Lcom/yandex/metrica/impl/ob/Pb;->b:Lcom/yandex/metrica/impl/ob/Cc;

    iget-object v11, v1, Lcom/yandex/metrica/impl/ob/Cc;->b:Landroid/location/LocationManager;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/Cc;->a:Lcom/yandex/metrica/impl/ob/Sb;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/Sb;->c:Lcom/yandex/metrica/impl/ob/yd;

    .line 4
    invoke-virtual {p0, v1}, Lcom/yandex/metrica/impl/ob/Pb;->a(Lcom/yandex/metrica/impl/ob/yd;)Lcom/yandex/metrica/impl/ob/zd;

    move-result-object v12

    .line 5
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Pb;->b()Ljava/lang/String;

    move-result-object v13

    .line 6
    new-instance v14, Lcom/yandex/metrica/impl/ob/zc;

    move-object/from16 v1, p1

    invoke-direct {v14, v1}, Lcom/yandex/metrica/impl/ob/zc;-><init>(Lcom/yandex/metrica/impl/ob/Pc;)V

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/yandex/metrica/impl/ob/Tc;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/location/LocationManager;Lcom/yandex/metrica/impl/ob/zd;Ljava/lang/String;Landroid/location/LocationListener;)V

    .line 7
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Pb;->e:Lcom/yandex/metrica/impl/ob/Mb;

    new-instance v4, Lcom/yandex/metrica/impl/ob/Ob;

    iget-object v1, v0, Lcom/yandex/metrica/impl/ob/Pb;->d:Lcom/yandex/metrica/impl/ob/gc;

    .line 8
    new-instance v5, Ldc/c;

    invoke-direct {v5}, Ldc/c;-><init>()V

    invoke-direct {v4, v1, v5}, Lcom/yandex/metrica/impl/ob/Ob;-><init>(Lcom/yandex/metrica/impl/ob/gc;Ldc/d;)V

    .line 9
    iget-object v5, v0, Lcom/yandex/metrica/impl/ob/Pb;->f:Lcom/yandex/metrica/impl/ob/Nb;

    move-object v1, v7

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/yandex/metrica/impl/ob/Ec;-><init>(Lcom/yandex/metrica/impl/ob/Dc;Lcom/yandex/metrica/impl/ob/Lb;Lcom/yandex/metrica/impl/ob/Gc;Lcom/yandex/metrica/impl/ob/Qb;Ljava/lang/Object;)V

    return-object v7
.end method

.method protected abstract a()Lcom/yandex/metrica/impl/ob/gc;
.end method

.method protected abstract a(Lcom/yandex/metrica/impl/ob/yd;)Lcom/yandex/metrica/impl/ob/zd;
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method protected abstract c()Ljava/lang/String;
.end method

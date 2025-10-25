.class public Lcom/yandex/metrica/impl/ob/yl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/yl$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/M0;

.field private final b:Lcom/yandex/metrica/impl/ob/wl;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/wl;Lcom/yandex/metrica/impl/ob/M0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/yl;->b:Lcom/yandex/metrica/impl/ob/wl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/yl;->a:Lcom/yandex/metrica/impl/ob/M0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/yl;->b:Lcom/yandex/metrica/impl/ob/wl;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/yandex/metrica/impl/ob/wl;->f:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/yl;->a:Lcom/yandex/metrica/impl/ob/M0;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Lcom/yandex/metrica/IReporter;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

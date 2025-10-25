.class public Lcom/yandex/metrica/impl/ob/eg;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# static fields
.field public static final synthetic b:I


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/cg;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/yandex/metrica/impl/ob/cg;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/eg;->a:Lcom/yandex/metrica/impl/ob/cg;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    :try_start_0
    const-string p1, "referrer"

    .line 5
    .line 6
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/dg;->a([B)Lcom/yandex/metrica/impl/ob/dg;

    .line 11
    .line 12
    .line 13
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/eg;->a:Lcom/yandex/metrica/impl/ob/cg;

    .line 17
    .line 18
    invoke-interface {p2, p1}, Lcom/yandex/metrica/impl/ob/cg;->a(Lcom/yandex/metrica/impl/ob/dg;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

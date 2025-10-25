.class Lcom/yandex/metrica/impl/ob/nh$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/jh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/nh;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/nh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/nh$h;->a:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/nh$h;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/nh$h;->c:Ljava/lang/Throwable;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/M0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/nh$h;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/nh$h;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/nh$h;->c:Ljava/lang/Throwable;

    .line 6
    .line 7
    invoke-interface {p1, v0, v1, v2}, Lcom/yandex/metrica/IReporter;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.class final Lcom/yandex/metrica/impl/ob/Sg$c;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/Sg;->a()Lxc/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/n;",
        "Lid/l;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/cf;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/cf;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Sg$c;->a:Lcom/yandex/metrica/impl/ob/cf;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, [B

    .line 2
    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Sg$c;->a:Lcom/yandex/metrica/impl/ob/cf;

    .line 4
    .line 5
    iput-object p1, v0, Lcom/yandex/metrica/impl/ob/cf;->i:[B

    .line 6
    .line 7
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 8
    .line 9
    return-object p1
.end method

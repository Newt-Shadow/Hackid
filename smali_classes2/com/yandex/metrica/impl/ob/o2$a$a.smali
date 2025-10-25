.class Lcom/yandex/metrica/impl/ob/o2$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/E1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/o2$a;->a(Landroid/app/Activity;Lcom/yandex/metrica/impl/ob/q$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/E1<",
        "Lcom/yandex/metrica/impl/ob/j1;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/yandex/metrica/impl/ob/o2$a;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/o2$a;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/o2$a$a;->b:Lcom/yandex/metrica/impl/ob/o2$a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/o2$a$a;->a:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/j1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/o2$a$a;->b:Lcom/yandex/metrica/impl/ob/o2$a;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/o2$a;->a:Lcom/yandex/metrica/impl/ob/o2;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/o2$a$a;->a:Landroid/app/Activity;

    .line 8
    .line 9
    invoke-static {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/o2;->a(Lcom/yandex/metrica/impl/ob/o2;Landroid/app/Activity;Lcom/yandex/metrica/impl/ob/K0;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

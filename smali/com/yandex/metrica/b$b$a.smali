.class Lcom/yandex/metrica/b$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/b$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/b$b;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/b$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/b$b$a;->a:Lcom/yandex/metrica/b$b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/b$b$a;->a:Lcom/yandex/metrica/b$b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yandex/metrica/b$b;->b:Lcom/yandex/metrica/b$a;

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/yandex/metrica/b$a;->a()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

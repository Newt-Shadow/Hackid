.class final Lkb/b$f;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkb/b;->y(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lfb/b;


# direct methods
.method constructor <init>(Lfb/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkb/b$f;->e:Lfb/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lkb/b$f;->invoke(I)V

    sget-object p1, Lxc/t;->a:Lxc/t;

    return-object p1
.end method

.method public final invoke(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lkb/b$f;->e:Lfb/b;

    invoke-virtual {v0, p1}, Leb/d;->U(I)V

    return-void
.end method

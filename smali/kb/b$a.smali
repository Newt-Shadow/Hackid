.class final Lkb/b$a;
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
    iput-object p1, p0, Lkb/b$a;->e:Lfb/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lkb/b$a;->invoke(Ljava/lang/String;)V

    sget-object p1, Lxc/t;->a:Lxc/t;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x54506df1

    if-eq v0, v1, :cond_4

    const v1, 0x63dca8c

    if-eq v0, v1, :cond_2

    const v1, 0x1c007ae7

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "identifiedOnly"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lkb/b$a;->e:Lfb/b;

    sget-object v0, Leb/a;->c:Leb/a;

    invoke-virtual {p1, v0}, Leb/d;->X(Leb/a;)V

    goto :goto_0

    :cond_2
    const-string v0, "never"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    iget-object p1, p0, Lkb/b$a;->e:Lfb/b;

    sget-object v0, Leb/a;->a:Leb/a;

    invoke-virtual {p1, v0}, Leb/d;->X(Leb/a;)V

    goto :goto_0

    :cond_4
    const-string v0, "always"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    .line 7
    :cond_5
    iget-object p1, p0, Lkb/b$a;->e:Lfb/b;

    sget-object v0, Leb/a;->b:Leb/a;

    invoke-virtual {p1, v0}, Leb/d;->X(Leb/a;)V

    :goto_0
    return-void
.end method

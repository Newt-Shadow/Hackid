.class public final synthetic Lvd/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid/p;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lvd/e;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lvd/e;Lbe/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvd/d;->a:Ljava/lang/Object;

    iput-object p2, p0, Lvd/d;->b:Lvd/e;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lvd/d;->a:Ljava/lang/Object;

    iget-object v1, p0, Lvd/d;->b:Lvd/e;

    const/4 v2, 0x0

    move-object v3, p1

    check-cast v3, Ljava/lang/Throwable;

    move-object v5, p3

    check-cast v5, Lad/i;

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lvd/e;->a(Ljava/lang/Object;Lvd/e;Lbe/a;Ljava/lang/Throwable;Ljava/lang/Object;Lad/i;)Lxc/t;

    move-result-object p1

    return-object p1
.end method

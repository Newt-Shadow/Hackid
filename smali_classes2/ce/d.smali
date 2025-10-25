.class public final synthetic Lce/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid/l;


# instance fields
.field public final synthetic a:Lce/f;

.field public final synthetic b:Lce/f$a;


# direct methods
.method public synthetic constructor <init>(Lce/f;Lce/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lce/d;->a:Lce/f;

    iput-object p2, p0, Lce/d;->b:Lce/f$a;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lce/d;->a:Lce/f;

    iget-object v1, p0, Lce/d;->b:Lce/f$a;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v1, p1}, Lce/f$a;->a(Lce/f;Lce/f$a;Ljava/lang/Throwable;)Lxc/t;

    move-result-object p1

    return-object p1
.end method

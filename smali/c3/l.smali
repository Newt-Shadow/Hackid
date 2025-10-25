.class public final synthetic Lc3/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly4/q$b;


# instance fields
.field public final synthetic a:Lc3/n1;

.field public final synthetic b:Lb3/m3;


# direct methods
.method public synthetic constructor <init>(Lc3/n1;Lb3/m3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc3/l;->a:Lc3/n1;

    iput-object p2, p0, Lc3/l;->b:Lb3/m3;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ly4/l;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc3/l;->a:Lc3/n1;

    iget-object v1, p0, Lc3/l;->b:Lb3/m3;

    check-cast p1, Lc3/b;

    invoke-static {v0, v1, p1, p2}, Lc3/n1;->K0(Lc3/n1;Lb3/m3;Lc3/b;Ly4/l;)V

    return-void
.end method

.class public final synthetic Lw4/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln6/n;


# instance fields
.field public final synthetic a:Lw4/m;


# direct methods
.method public synthetic constructor <init>(Lw4/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw4/l;->a:Lw4/m;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lw4/l;->a:Lw4/m;

    check-cast p1, Lb3/x1;

    invoke-static {v0, p1}, Lw4/m;->n(Lw4/m;Lb3/x1;)Z

    move-result p1

    return p1
.end method

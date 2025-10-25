.class public final synthetic Lw2/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly2/b$a;


# instance fields
.field public final synthetic a:Lw2/r;


# direct methods
.method public synthetic constructor <init>(Lw2/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw2/o;->a:Lw2/r;

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lw2/o;->a:Lw2/r;

    invoke-static {v0}, Lw2/r;->i(Lw2/r;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

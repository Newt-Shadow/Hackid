.class final Ld6/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld6/t;


# instance fields
.field final synthetic a:Ld6/y;


# direct methods
.method constructor <init>(Ld6/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld6/x;->a:Ld6/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ld6/i;
    .locals 1

    .line 1
    iget-object v0, p0, Ld6/x;->a:Ld6/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Ln5/c;->D()Landroid/os/IInterface;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ld6/i;

    .line 8
    .line 9
    return-object v0
.end method

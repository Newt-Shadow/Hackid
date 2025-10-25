.class public final synthetic Lw4/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw4/m$h$a;


# instance fields
.field public final synthetic a:Lw4/m$d;

.field public final synthetic b:[I


# direct methods
.method public synthetic constructor <init>(Lw4/m$d;[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw4/h;->a:Lw4/m$d;

    iput-object p2, p0, Lw4/h;->b:[I

    return-void
.end method


# virtual methods
.method public final a(ILd4/s0;[I)Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lw4/h;->a:Lw4/m$d;

    iget-object v1, p0, Lw4/h;->b:[I

    invoke-static {v0, v1, p1, p2, p3}, Lw4/m;->o(Lw4/m$d;[IILd4/s0;[I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.class public final Lj0/b0;
.super Lj0/i0;
.source "SourceFile"


# instance fields
.field private final b:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;I)V
    .locals 1

    .line 1
    const-string v0, "readException"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p2, v0}, Lj0/i0;-><init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lj0/b0;->b:Ljava/lang/Throwable;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Lj0/b0;->b:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-object v0
.end method

Create Database TicketBooking

CREATE TABLE  BookedTickets
(
    id int IDENTITY (1,1) NOT NULL,
    SeatNo nchar (10) NULL,
    Status bit NULL
);

INSERT INTO BookedTickets(SeatNo,Status) VALUES ('A13','True');
INSERT INTO BookedTickets(SeatNo,Status) VALUES ('A14','True'); 